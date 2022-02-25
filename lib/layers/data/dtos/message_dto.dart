import 'package:whatsapp/layers/domain/entities/message_entity.dart';

class MessageDto extends MessageEntity {
  String usuario;
  String usuarioImagem;
  String ultimaMensagem;
  String horario;

  MessageDto({
    required this.usuario,
    required this.usuarioImagem,
    required this.ultimaMensagem,
    required this.horario,
  }) : super(
    user: usuario,
    userImage: usuarioImagem,
    lastMessage: ultimaMensagem,
    timeLastMessage: horario,
  );

  static MessageDto fromMap(Map values) {
    return MessageDto(
      usuario: values["usuario"],
      usuarioImagem: values["usuarioImagem"],
      ultimaMensagem: values["ultimaMensagem"],
      horario: values['horario'],
    );
  }

}