import 'package:whatsapp/layers/domain/entities/message_entity.dart';

abstract class GetMessagesRepository {
  List<MessageEntity> call();
}