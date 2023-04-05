import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas_md/model/tarefa.dart';

class DetalhePage extends StatefulWidget{
  final Tarefa tarefa;

  const DetalhePage({Key? key, required this.tarefa}) : super(key: key);

  @override
  _DetalhePageState createState() => _DetalhePageState();

}

class _DetalhePageState extends State<DetalhePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Tarefa ${widget.tarefa.id}'),
      ),
      body: _criarBody(),
    );
  }

  Widget _criarBody(){
    return Padding(padding: EdgeInsets.all(10),
    child: ListView(
      children: [
        Row(
          children: [
            Campo(decricao: 'Código: ')
            Valor(valor: '${widget.tarefa.id}'),
          ],
        ),
        Row(
          children: [
            Campo(decricao: 'Código: ')
            Valor(valor: '${widget.tarefa.descricao}'),
          ],
        ),
        Row(
          children: [
            Campo(decricao: 'Código: ')
            Valor(valor: '${widget.tarefa.prazoFormatado}'),
          ],
        )
      ],
    ),)
  }
}