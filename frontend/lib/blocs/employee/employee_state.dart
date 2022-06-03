part of 'employee_bloc.dart';

@immutable
abstract class EmployeeState {
  final String username;
  final String email;
  final String fullName;
  final String location;
  final String bio;
  List<Post> posts;

EmployeeState(
      this.username, this.email, this.fullName, this.location, this.bio, this.posts);
}
class EmployeeInitial extends EmployeeState {
    EmployeeInitial() : super(' ', ' ', ' ', ' ', ' ', []);
}

class EmployeeHomeLoading extends EmployeeState {
    EmployeeHomeLoading() : super(' ', ' ', ' ', ' ', ' ', []);
}

class EmployeeHomeLoaded extends EmployeeState {
    EmployeeHomeLoaded(
      {required String username,
      required String email,
      required String fullName,
      required String location,
      required String bio,
      required List<Post> posts})
      : super(username, email, fullName, location, bio, posts);
}

class EmployeeHomeLoadingFailed extends EmployeeState {
  final String exception;

    EmployeeHomeLoadingFailed({required this.exception})
      : super(' ', ' ', ' ', ' ', ' ', []);
}
