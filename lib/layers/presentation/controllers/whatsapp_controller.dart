import 'package:whatsapp/layers/domain/entities/message_entity.dart';
import 'package:whatsapp/layers/domain/usecases/get_messages_usecase.dart';

class WhatsappController {
  final GetMessagesUseCase _getMessagesUseCase;

  WhatsappController(this._getMessagesUseCase) {
    getAllMessages();
  }

  late List<MessageEntity> messages;

  getAllMessages() {
    messages = _getMessagesUseCase();
  }

}