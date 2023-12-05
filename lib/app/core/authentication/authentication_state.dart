part of 'authentication_cubit.dart';

@freezed
class AuthenticationState extends Equatable with _$AuthenticationState {
  const factory AuthenticationState.initial(
      {@Default(null) UserAccount? userAccount}) = _Initial;

  const factory AuthenticationState.success(
      {required UserAccount userAccount}) = _Success;

const  AuthenticationState._();

  @override
  // TODO: implement props
  List<Object?> get props => [userAccount];
}
