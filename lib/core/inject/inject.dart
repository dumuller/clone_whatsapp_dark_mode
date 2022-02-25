import 'package:get_it/get_it.dart';
import 'package:whatsapp/layers/data/datasources/get_messages_datasource.dart';
import 'package:whatsapp/layers/data/datasources/local/get_messages_local_datasource_impl.dart';
import 'package:whatsapp/layers/data/repositories/get_messages_repository_impl.dart';
import 'package:whatsapp/layers/domain/repositories/get_messages_repository.dart';
import 'package:whatsapp/layers/domain/usecases/get_messages_usecase.dart';
import 'package:whatsapp/layers/domain/usecases/get_messages_usecase_impl.dart';
import 'package:whatsapp/layers/presentation/controllers/whatsapp_controller.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;
    
    getIt.registerLazySingleton<GetMessagesDatasource>(() => GetMessagesLocalDatasourceImpl());

    getIt.registerLazySingleton<GetMessagesRepository>(() => GetMessagesRepositoryImpl(getIt()));

    getIt.registerLazySingleton<GetMessagesUseCase>(() => GetMessagesUseCaseImpl(getIt()));

    getIt.registerFactory<WhatsappController>(() => WhatsappController(getIt()));

  }
}