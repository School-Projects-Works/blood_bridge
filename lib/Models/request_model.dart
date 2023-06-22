// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class RequestModel {
  String? id;
  String? region;
  String? bloodType;
  String? genotype;
  String? vaccination;
  String? status;
  String? requestUserId;
  Map<String, dynamic>? requestUser;
  Map<String, dynamic>? donorUser;
  String? donorId;
  int? createdAt;
  int? updatedAt;
  RequestModel({
    this.id,
    this.region,
    this.bloodType,
    this.genotype,
    this.vaccination,
    this.status,
    this.requestUserId,
    this.requestUser,
    this.donorUser,
    this.donorId,
    this.createdAt,
    this.updatedAt,
  });

  RequestModel copyWith({
    String? id,
    String? region,
    String? bloodType,
    String? genotype,
    String? vaccination,
    String? status,
    String? requestUserId,
    Map<String, dynamic>? requestUser,
    Map<String, dynamic>? donorUser,
    String? donorId,
    int? createdAt,
    int? updatedAt,
  }) {
    return RequestModel(
      id: id ?? this.id,
      region: region ?? this.region,
      bloodType: bloodType ?? this.bloodType,
      genotype: genotype ?? this.genotype,
      vaccination: vaccination ?? this.vaccination,
      status: status ?? this.status,
      requestUserId: requestUserId ?? this.requestUserId,
      requestUser: requestUser ?? this.requestUser,
      donorUser: donorUser ?? this.donorUser,
      donorId: donorId ?? this.donorId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': region,
      'bloodType': bloodType,
      'genotype': genotype,
      'vaccination': vaccination,
      'status': status,
      'requestUserId': requestUserId,
      'requestUser': requestUser,
      'donorUser': donorUser,
      'donorId': donorId,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory RequestModel.fromMap(Map<String, dynamic> map) {
    return RequestModel(
      id: map['id'] != null ? map['id'] as String : null,
      region: map['region'] != null ? map['region'] as String : null,
      bloodType: map['bloodType'] != null ? map['bloodType'] as String : null,
      genotype: map['genotype'] != null ? map['genotype'] as String : null,
      vaccination:
          map['vaccination'] != null ? map['vaccination'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      requestUserId:
          map['requestUserId'] != null ? map['requestUserId'] as String : null,
      requestUser: map['requestUser'] != null
          ? Map<String, dynamic>.from(
              (map['requestUser'] as Map<String, dynamic>))
          : null,
      donorUser: map['donorUser'] != null
          ? Map<String, dynamic>.from(
              (map['donorUser'] as Map<String, dynamic>))
          : null,
      donorId: map['donorId'] != null ? map['donorId'] as String : null,
      createdAt: map['createdAt'] != null ? map['createdAt'] as int : null,
      updatedAt: map['updatedAt'] != null ? map['updatedAt'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory RequestModel.fromJson(String source) =>
      RequestModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RequestModel(id: $id, region: $region, bloodType: $bloodType, genotype: $genotype, vaccination: $vaccination, status: $status, requestUserId: $requestUserId, requestUser: $requestUser, donorUser: $donorUser, donorId: $donorId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(covariant RequestModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.region == region &&
        other.bloodType == bloodType &&
        other.genotype == genotype &&
        other.vaccination == vaccination &&
        other.status == status &&
        other.requestUserId == requestUserId &&
        mapEquals(other.requestUser, requestUser) &&
        mapEquals(other.donorUser, donorUser) &&
        other.donorId == donorId &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        region.hashCode ^
        bloodType.hashCode ^
        genotype.hashCode ^
        vaccination.hashCode ^
        status.hashCode ^
        requestUserId.hashCode ^
        requestUser.hashCode ^
        donorUser.hashCode ^
        donorId.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
