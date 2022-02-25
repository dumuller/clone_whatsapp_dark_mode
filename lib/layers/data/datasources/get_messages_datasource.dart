import 'package:whatsapp/layers/domain/entities/message_entity.dart';

abstract class GetMessagesDatasource {
  List<MessageEntity> call();
}