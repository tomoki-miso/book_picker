import 'package:book_picker/domain/user/domain.dart';
import 'package:book_picker/features/questionnaire/state.dart';
import 'package:book_picker/repository/icons/repository.dart';
import 'package:book_picker/repository/user_info/repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class QuestionnaireViewModel extends _$QuestionnaireViewModel {
  UserInfoRepo get userInfoRepo => ref.read(userInfoRepoProvider.notifier);
  UserIconsRepo get userIconsRepo => ref.read(userIconsRepoProvider.notifier);

  @override
  FutureOr<QuestionnaireState> build() async {
    final state = QuestionnaireState(
      userNameController: TextEditingController(),
      userName: '',
    );

    ref.onDispose(() {
      state.userNameController.dispose();
    });

    return state;
  }

  Future<void> inputUserName() async {
    final data = state.requireValue;
    state = AsyncData(data.copyWith(userName: data.userNameController.text));
  }

  Future<void> saveUserInfo() async {
    final data = state.requireValue;
    final String userIcon = await userIconsRepo.getRandomUserIcon();
    final UserInfoClass userInfo = UserInfoClass(
      userId: FirebaseAuth.instance.currentUser!.uid,
      userName: data.userName,
      userIcon: userIcon,
    );

    await userInfoRepo.saveUserInfo(userInfo).then((value) {
      data.userNameController.clear();
    });
  }
}
