pipeline {
    agent any

    environment {
        FLUTTER_VERSION = "3.27.1-stable"
        FLUTTER_DIR = "${WORKSPACE}/flutter"
        APP_NAME = "my_flutter_app"
        DOCKER_IMAGE = "my_flutter_app_image"
        DOCKER_TAG = "latest"
        SONAR_SCANNER_HOME = "C:\\sonarscanner\\bin"
        PATH = "${env.PATH};${env.FLUTTER_DIR}\\bin;${env.SONAR_SCANNER_HOME}"
    }

    tools {
        // Optional: You can declare SonarScanner tool here if configured in Jenkins
    }

    stages {

        stage('Download Flutter SDK') {
            steps {
                echo 'Downloading Flutter SDK...'
                bat '''
                    curl -L https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.27.1-stable.zip -o flutter.zip
                    powershell Expand-Archive -Path flutter.zip -DestinationPath .
                '''
            }
        }

        stage('Git Checks') {
            steps {
                bat '''
                    git status
                    git rev-parse --abbrev-ref HEAD
                    git log -n 3
                '''
            }
        }

        stage('Secrets Scan (GitLeaks)') {
            steps {
                bat 'gitleaks detect --source=. --no-git --verbose'
            }
        }

        stage('Static Code Analysis (Flutter Analyze)') {
            steps {
                bat '''
                    flutter pub get
                    flutter analyze
                '''
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    bat 'sonar-scanner'
                }
            }
        }

        stage('Build Flutter Web') {
            steps {
                bat 'flutter build web'
            }
        }

        stage('Docker Build') {
            steps {
                writeFile file: 'Dockerfile', text: '''
                    FROM nginx:alpine
                    COPY build/web /usr/share/nginx/html
                '''
                bat 'docker build -t %DOCKER_IMAGE%:%DOCKER_TAG% .'
            }
        }

        stage('Docker Image Scan (Trivy)') {
            steps {
                bat 'trivy image %DOCKER_IMAGE%:%DOCKER_TAG%'
            }
        }

        stage('Manual Approval') {
            steps {
                timeout(time: 10, unit: 'MINUTES') {
                    input message: 'Approve deployment?', ok: 'Deploy'
                }
            }
        }

        stage('Deploy to Docker') {
            steps {
                bat '''
                    docker stop %APP_NAME% || echo "Not running"
                    docker rm %APP_NAME% || echo "Not found"
                    docker run -d --name %APP_NAME% -p 8080:80 %DOCKER_IMAGE%:%DOCKER_TAG%
                '''
            }
        }
    }

    post {
        success {
            echo '✅ Build, scan, and deploy successful!'
        }
        failure {
            echo '❌ Something failed. Check logs.'
        }
    }
}
