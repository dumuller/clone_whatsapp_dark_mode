import 'package:whatsapp/layers/domain/entities/message_entity.dart';
import 'package:whatsapp/layers/domain/repositories/get_messages_repository.dart';
import 'package:whatsapp/layers/domain/usecases/get_messages_usecase.dart';

class GetMessagesUseCaseImpl implements GetMessagesUseCase {

  final GetMessagesRepository _getMessagesRepository;

  GetMessagesUseCaseImpl(this._getMessagesRepository);

  @override
  List<MessageEntity> call() {
    return _getMessagesRepository();
  }

}