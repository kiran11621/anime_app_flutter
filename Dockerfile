# Dockerfile
FROM ubuntu:22.04

# # Install dependencies
# RUN apt-get update && apt-get install -y \
#     curl git unzip xz-utils zip libglu1-mesa openjdk-17-jdk \
#     && apt-get clean

# # Install Flutter SDK
# ENV FLUTTER_VERSION=3.27.1
# RUN git clone https://github.com/flutter/flutter.git /flutter \
#     && cd /flutter && git checkout $FLUTTER_VERSION \
#     && /flutter/bin/flutter doctor

# # Set Flutter to be in the PATH
# ENV PATH="/flutter/bin:/flutter/bin/cache/dart-sdk/bin:$PATH"

# # Pre-cache dependencies for Flutter web
# RUN flutter doctor && flutter config --enable-web && flutter precache

# WORKDIR /app

# CMD ["flutter", "build", "web"]
