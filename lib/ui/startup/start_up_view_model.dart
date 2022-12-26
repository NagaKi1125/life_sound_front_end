import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'start_up_view_state.dart';
import '../../../usecases/base/base_use_case.dart';

class StartUpViewModel extends StateNotifier<StartUpViewState> {

  StartUpViewModel()
      : super(const StartUpViewState.success(true));


}
