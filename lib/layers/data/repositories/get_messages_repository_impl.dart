import 'package:whatsapp/layers/data/datasources/get_messages_datasource.dart';
import 'package:whatsapp/layers/domain/entities/message_entity.dart';
import 'package:whatsapp/layers/domain/repositories/get_messages_repository.dart';

class GetMessagesRepositoryImpl implements GetMessagesRepository {

  final GetMessagesDatasource _getMessagesDatasource;
  GetMessagesRepositoryImpl(this._getMessagesDatasource);

  @override
  List<MessageEntity> call() {
    return _getMessagesDatasource();
  }

}