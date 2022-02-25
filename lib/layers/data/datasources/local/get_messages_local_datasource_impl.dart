import 'dart:convert';
import 'package:whatsapp/layers/data/datasources/get_messages_datasource.dart';
import 'package:whatsapp/layers/data/dtos/message_dto.dart';
import 'package:whatsapp/layers/domain/entities/message_entity.dart';

class GetMessagesLocalDatasourceImpl implements GetMessagesDatasource {

  var json = [
    {"usuario": "Amor", "usuarioImagem": "assets/perfil1.jpg", "ultimaMensagem": "Compra pão", "horario": "16:22"},
    {	"usuario": "Mãe",	"usuarioImagem": "assets/perfi2.jpg", "ultimaMensagem": "Olá, tudo bem?" , "horario": "16:21"},
    {	"usuario": "Pedal Maravilha",	"usuarioImagem": "assets/perfil3.png", "ultimaMensagem": "Maci: Bora pedalar" , "horario": "16:20"},
    {	"usuario": "Usuário 123",	"usuarioImagem": "assets/perfil4.jpg", "ultimaMensagem": "Olá, tudo bem?" , "horario": "16:19"},
    {	"usuario": "Empresa",	"usuarioImagem": "assets/perfil5.jpg", "ultimaMensagem": "Rodrigo: Parabéns!!", "horario": "16:18" },
    {	"usuario": "Usuário XYZ",	"usuarioImagem": "assets/perfil6.jpg", "ultimaMensagem": "tudo bem", "horario": "16:17" },
    {	"usuario": "Grupo Amigos",	"usuarioImagem": "assets/perfil.jpg", "ultimaMensagem": "Mozer: Bora fazer uma carne", "horario": "16:16" },
    {	"usuario": "+55 49 9102-0304",	"usuarioImagem": "assets/default.png", "ultimaMensagem": "Tem promoção", "horario": "16:15" },
    {	"usuario": "+55 49 9102-0305",	"usuarioImagem": "assets/default.png", "ultimaMensagem": "Obrigado pelo retorno", "horario": "16:14" },
    {	"usuario": "+55 49 9102-0306",	"usuarioImagem": "assets/default.png", "ultimaMensagem": "Seu pedido saiu para entrega", "horario": "16:13" },
  ];

  @override
  List<MessageEntity> call() {
    List<MessageEntity> messages = [];
    json.map((e) => messages.add(MessageDto.fromMap(e))).toList();
    return messages;
  }

}