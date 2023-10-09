// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Thing extends Equatable {
  final String id;
  final String username;
  final String data;
  final DateTime lastUpdAt;

  const Thing({
    required this.id,
    required this.username,
    required this.data,
    required this.lastUpdAt,
  });

  factory Thing.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;

    return Thing(
      id: doc.id,
      username: data['username'],
      data: data['data'],
      lastUpdAt: (data['lastUpdAt'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toFirebase() {
    return <String, dynamic>{
      'username': username,
      'data': data,
      'lastUpdAt': lastUpdAt,
    };
  }

  @override
  List<Object> get props => [id, username, data, lastUpdAt];
}
