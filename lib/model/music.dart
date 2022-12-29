import 'package:equatable/equatable.dart';
import 'package:life_sound/api/response/music_response.dart';

class Music extends Equatable {
  Music({
    this.id,
    this.authors,
    this.previewUrl,
    this.duration,
    this.name,
    this.spotifyId,
    this.year,
    this.url,
    this.category,
    this.thumbnail,
    this.updatedAt,
    this.createdAt,
  });

  final String? id;
  final String? authors;
  final String? previewUrl;
  final int? duration;
  final String? name;
  final String? spotifyId;
  final int? year;
  final String? url;
  final String? category;
  final String? thumbnail;
  final String? updatedAt;
  final String? createdAt;

  factory Music.fromMusicResponse(MusicResponse response) => Music(
        id: response.id ?? '',
        authors: response.authors ?? '',
        previewUrl: response.previewUrl ?? '',
        duration: response.duration ?? 0,
        name: response.name ?? '',
        spotifyId: response.spotifyId ?? '',
        year: response.year ?? 1000,
        url: response.url ?? '',
        category: response.category ?? '',
        thumbnail: response.thumbnail ?? '',
        updatedAt: response.updatedAt ?? '',
        createdAt: response.createdAt ?? '',
      );

  @override
  List<Object?> get props => [
        id,
        name,
        authors,
        category,
        previewUrl,
        duration,
        spotifyId,
        year,
        updatedAt,
        createdAt,
        url,
        thumbnail
      ];
}
