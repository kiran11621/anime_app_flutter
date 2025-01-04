// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AnimeResponseAdapter extends TypeAdapter<AnimeResponse> {
  @override
  final int typeId = 1;

  @override
  AnimeResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AnimeResponse(
      pagination: fields[1] as Pagination?,
      data: (fields[2] as List?)?.cast<Datum>(),
    );
  }

  @override
  void write(BinaryWriter writer, AnimeResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.pagination)
      ..writeByte(2)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnimeResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DatumAdapter extends TypeAdapter<Datum> {
  @override
  final int typeId = 2;

  @override
  Datum read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Datum(
      malId: fields[1] as int?,
      url: fields[2] as String?,
      images: (fields[3] as Map?)?.cast<String, Image>(),
      trailer: fields[4] as Trailer?,
      approved: fields[5] as bool?,
      titles: (fields[6] as List?)?.cast<Title>(),
      title: fields[7] as String?,
      titleEnglish: fields[8] as String?,
      titleJapanese: fields[9] as String?,
      titleSynonyms: (fields[10] as List?)?.cast<String>(),
      type: fields[11] as DatumType?,
      source: fields[12] as Source?,
      episodes: fields[13] as int?,
      status: fields[14] as Status?,
      airing: fields[15] as bool?,
      aired: fields[16] as Aired?,
      duration: fields[17] as String?,
      rating: fields[18] as Rating?,
      score: fields[19] as double?,
      scoredBy: fields[20] as int?,
      rank: fields[21] as int?,
      popularity: fields[22] as int?,
      members: fields[23] as int?,
      favorites: fields[24] as int?,
      synopsis: fields[25] as String?,
      background: fields[26] as String?,
      season: fields[27] as Season?,
      year: fields[28] as int?,
      broadcast: fields[29] as Broadcast?,
      producers: (fields[30] as List?)?.cast<Demographic>(),
      licensors: (fields[31] as List?)?.cast<Demographic>(),
      studios: (fields[32] as List?)?.cast<Demographic>(),
      genres: (fields[33] as List?)?.cast<Demographic>(),
      explicitGenres: (fields[34] as List?)?.cast<dynamic>(),
      themes: (fields[35] as List?)?.cast<Demographic>(),
      demographics: (fields[36] as List?)?.cast<Demographic>(),
    );
  }

  @override
  void write(BinaryWriter writer, Datum obj) {
    writer
      ..writeByte(36)
      ..writeByte(1)
      ..write(obj.malId)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.images)
      ..writeByte(4)
      ..write(obj.trailer)
      ..writeByte(5)
      ..write(obj.approved)
      ..writeByte(6)
      ..write(obj.titles)
      ..writeByte(7)
      ..write(obj.title)
      ..writeByte(8)
      ..write(obj.titleEnglish)
      ..writeByte(9)
      ..write(obj.titleJapanese)
      ..writeByte(10)
      ..write(obj.titleSynonyms)
      ..writeByte(11)
      ..write(obj.type)
      ..writeByte(12)
      ..write(obj.source)
      ..writeByte(13)
      ..write(obj.episodes)
      ..writeByte(14)
      ..write(obj.status)
      ..writeByte(15)
      ..write(obj.airing)
      ..writeByte(16)
      ..write(obj.aired)
      ..writeByte(17)
      ..write(obj.duration)
      ..writeByte(18)
      ..write(obj.rating)
      ..writeByte(19)
      ..write(obj.score)
      ..writeByte(20)
      ..write(obj.scoredBy)
      ..writeByte(21)
      ..write(obj.rank)
      ..writeByte(22)
      ..write(obj.popularity)
      ..writeByte(23)
      ..write(obj.members)
      ..writeByte(24)
      ..write(obj.favorites)
      ..writeByte(25)
      ..write(obj.synopsis)
      ..writeByte(26)
      ..write(obj.background)
      ..writeByte(27)
      ..write(obj.season)
      ..writeByte(28)
      ..write(obj.year)
      ..writeByte(29)
      ..write(obj.broadcast)
      ..writeByte(30)
      ..write(obj.producers)
      ..writeByte(31)
      ..write(obj.licensors)
      ..writeByte(32)
      ..write(obj.studios)
      ..writeByte(33)
      ..write(obj.genres)
      ..writeByte(34)
      ..write(obj.explicitGenres)
      ..writeByte(35)
      ..write(obj.themes)
      ..writeByte(36)
      ..write(obj.demographics);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DatumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AiredAdapter extends TypeAdapter<Aired> {
  @override
  final int typeId = 3;

  @override
  Aired read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Aired(
      from: fields[1] as DateTime?,
      to: fields[2] as DateTime?,
      prop: fields[3] as Prop?,
      string: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Aired obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.from)
      ..writeByte(2)
      ..write(obj.to)
      ..writeByte(3)
      ..write(obj.prop)
      ..writeByte(4)
      ..write(obj.string);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AiredAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PropAdapter extends TypeAdapter<Prop> {
  @override
  final int typeId = 4;

  @override
  Prop read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Prop(
      from: fields[1] as From?,
      to: fields[2] as From?,
    );
  }

  @override
  void write(BinaryWriter writer, Prop obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.from)
      ..writeByte(2)
      ..write(obj.to);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PropAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FromAdapter extends TypeAdapter<From> {
  @override
  final int typeId = 5;

  @override
  From read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return From(
      day: fields[1] as int?,
      month: fields[2] as int?,
      year: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, From obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.day)
      ..writeByte(2)
      ..write(obj.month)
      ..writeByte(3)
      ..write(obj.year);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FromAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BroadcastAdapter extends TypeAdapter<Broadcast> {
  @override
  final int typeId = 6;

  @override
  Broadcast read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Broadcast(
      day: fields[1] as String?,
      time: fields[2] as String?,
      timezone: fields[3] as Timezone?,
      string: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Broadcast obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.day)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.timezone)
      ..writeByte(4)
      ..write(obj.string);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BroadcastAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DemographicAdapter extends TypeAdapter<Demographic> {
  @override
  final int typeId = 7;

  @override
  Demographic read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Demographic(
      malId: fields[1] as int?,
      type: fields[2] as DemographicType?,
      name: fields[3] as String?,
      url: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Demographic obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.malId)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DemographicAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ImageAdapter extends TypeAdapter<Image> {
  @override
  final int typeId = 8;

  @override
  Image read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Image(
      imageUrl: fields[1] as String?,
      smallImageUrl: fields[2] as String?,
      largeImageUrl: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Image obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.imageUrl)
      ..writeByte(2)
      ..write(obj.smallImageUrl)
      ..writeByte(3)
      ..write(obj.largeImageUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TitleAdapter extends TypeAdapter<Title> {
  @override
  final int typeId = 9;

  @override
  Title read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Title(
      type: fields[1] as TitleType?,
      title: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Title obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.title);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TitleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TrailerAdapter extends TypeAdapter<Trailer> {
  @override
  final int typeId = 10;

  @override
  Trailer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Trailer(
      youtubeId: fields[1] as String?,
      url: fields[2] as String?,
      embedUrl: fields[3] as String?,
      images: fields[4] as Images?,
    );
  }

  @override
  void write(BinaryWriter writer, Trailer obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.youtubeId)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.embedUrl)
      ..writeByte(4)
      ..write(obj.images);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrailerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ImagesAdapter extends TypeAdapter<Images> {
  @override
  final int typeId = 11;

  @override
  Images read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Images(
      imageUrl: fields[1] as String?,
      smallImageUrl: fields[2] as String?,
      mediumImageUrl: fields[3] as String?,
      largeImageUrl: fields[4] as String?,
      maximumImageUrl: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Images obj) {
    writer
      ..writeByte(5)
      ..writeByte(1)
      ..write(obj.imageUrl)
      ..writeByte(2)
      ..write(obj.smallImageUrl)
      ..writeByte(3)
      ..write(obj.mediumImageUrl)
      ..writeByte(4)
      ..write(obj.largeImageUrl)
      ..writeByte(5)
      ..write(obj.maximumImageUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImagesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PaginationAdapter extends TypeAdapter<Pagination> {
  @override
  final int typeId = 12;

  @override
  Pagination read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pagination(
      lastVisiblePage: fields[1] as int?,
      hasNextPage: fields[2] as bool?,
      currentPage: fields[3] as int?,
      items: fields[4] as Items?,
    );
  }

  @override
  void write(BinaryWriter writer, Pagination obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.lastVisiblePage)
      ..writeByte(2)
      ..write(obj.hasNextPage)
      ..writeByte(3)
      ..write(obj.currentPage)
      ..writeByte(4)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaginationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ItemsAdapter extends TypeAdapter<Items> {
  @override
  final int typeId = 13;

  @override
  Items read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Items(
      count: fields[1] as int?,
      total: fields[2] as int?,
      perPage: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Items obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.count)
      ..writeByte(2)
      ..write(obj.total)
      ..writeByte(3)
      ..write(obj.perPage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
