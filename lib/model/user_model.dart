import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String nik;
  final String name;

  final int koin;

  UserModel({
    required this.id,
    required this.email,
    required this.nik,
    required this.name,
    this.koin = 0,
  });

  @override
  List<Object?> get props => [id, email, nik, koin, name];
}
