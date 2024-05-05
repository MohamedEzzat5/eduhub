import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../repositories/lang_repository.dart';


class ChangeLangCodeUseCase implements UseCase<bool, String> {
  final LangRepository langRepository;

  ChangeLangCodeUseCase({required this.langRepository});

  @override
  Future<Either<Failure, bool>> call(String langCode) async =>
      await langRepository.changeLang(langCode: langCode);
}
