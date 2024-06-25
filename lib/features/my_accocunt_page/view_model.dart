import 'package:book_picker/domain/user/domain.dart';
import 'package:book_picker/features/my_accocunt_page/state.dart';
import 'package:book_picker/repository/user_info/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class MyAccountViewModel extends _$MyAccountViewModel {
  UserInfoRepo get userInfoRepo => ref.read(userInfoRepoProvider.notifier);

  @override
  FutureOr<MyAccountPageState> build() async {
    final UserInfoClass userInfo = await userInfoRepo.getUserInfo();

    return MyAccountPageState(userInfo: userInfo);
  }
}
