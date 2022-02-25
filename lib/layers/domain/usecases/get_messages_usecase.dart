import 'package:whatsapp/layers/domain/entities/message_entity.dart';

abstract class GetMessagesUseCase {
  List<MessageEntity> call();
}