import 'dart:math';
import 'package:flutter/material.dart';

// int? numero = 10;

//PARÂMETROS NOMEADOS SÃO POR PADRÃO OPCIONAIS
//SE NÃO QUISER UTILIZAR O REQUIRED,
// DEVE INSERIR UM VALOR PADRÃO.

// int soma({required int primeiro, required int segundo}){
//   return primeiro + segundo;
// }

//TYPE PROMOTION [FUNCIONA DENTRO DE FUNÇÃO MAS NÃO DENTRO DE CLASSE]
//EM CLASSE USAR VARIÁVEL DE APOIO


// int totalCaracteres(String? texto){
//   // if(texto == null){
//   //   return 0;
//   // }
//   if(texto == null){
//     throw 'texto não pode ser nulo';
//   }
//   return texto.length;
// }

// class Usuario{
//   String? _nome;
//   int totalCaracteres(){
//     String? nome = _nome;
//     if(nome == null){
//       return 0;
//     }
//     return nome.length;
//   }
// }

// 1) Late Keyword
// class Usuario{
//   late String nome;
//   void configuraNome(String texto){
//     nome = texto;
//   }
// }

// 2) Late com referência circular
// class Time{
//   late Treinador treinador;
// }
// class Treinador{
//   late Time time;
// }

// 3) late - lazy (preguiçosa)
// int calculaTotalItens(){
//   print("calculaTotalItens: 3");
//   return 3;
// }
//
// class Carrinho{
//   late int totalItens = calculaTotalItens();
// }

// 01. INICIALLIZAÇÃO DE VARIÁVEIS
// VARIÁVEIS SUPERIORES

// int total = 0;

//CAMPOS ESTÁTICOS
// class Pedidos{
//   static int total = 0;
// }

// 02. CAMPOS DE INSTÂNCIA DEVEM SER INICIALIZADOS
// INICIALIZAÇÃO OU CONSTRUTOR

// class Carrinho{
//   int totalItens;
//   String item;
//   int quantidade;
//   Carrinho(this.item, this.quantidade, this.totalItens);
// }

// 03. VARIAVEIS LOCAIS
int calculaSalario(int salario){
  int resultado;
  if(salario>1000) {
    resultado = salario;
  } else{
    resultado = salario + 100;
  }
  return resultado;
}

void main() {

  // 01. INICIALIZAÇÃO DE VARIÁVEIS
  // total = 10;
  // print("total: $total");
  // print("identificador ${Pedidos.total}");

  // 02. CAMPOS DE INSTÂNCIA DEVEM SER INICIALIZADOS
  // - INICIALIZAÇÃO OU CONSTRUTOR
  // Carrinho carrinho = Carrinho("Capa de Celular", 2, 3);

  // 03. VARIAVEIS LOCAIS
  int resultado = calculaSalario(800);
  print(resultado);

  // 2) Late com referência circular

  // Time time = Time();
  // Treinador treinador = Treinador();

  //Configurar
  // time.treinador = treinador;
  // treinador.time = time;

  // 3) Lazy (preguiçosa)
  // Carrinho carrinho = Carrinho();
  // print("total: ${carrinho.totalItens}");

  // Usuario usuario = Usuario();
  // usuario.configuraNome("Douglas");
  // print(usuario.nome);

  // print(totalCaracteres("Douglas"));

// String? texto; //pode receber nulo (nullable) -> promovida para non-nullable
// texto = "Douglas";
//
//   if(DateTime.now().hour < 12) {
//     texto = "verdadeiro";
//   }else{
//     texto = "false";
//   }
//
//   print("resultado: $texto");
//   print("tamanho: ${texto.length}");



  // int resultado = soma(primeiro: 1, segundo: 2);
  // print("resultado: $resultado");

  //Lista pode ser nula? NÃO
  //Item pode ser nulo? NÃO

  // List<String> lista1 = [];
  // print("Lista: $lista1");

  //Lista pode ser nula? SIM
  //Item pode ser nulo? NÃO

  // List<String>? lista2 = [];
  // print("Lista 2: $lista2");

  //Lista pode ser nula? NÃO
  //Item pode ser nulo? SIM

  // List<String?> lista3 = [];
  // print("Lista 2: $lista3");

  //Lista pode ser nula? SIM
  //Item pode ser nulo? SIM

  // List<String?>? lista4 = [];
  // print("Lista 3: $lista4");

  //MAP PODE SER NULO? NÃO
  //ITEM PODE SER NULO? NÃO
  // Map<String, int> map1 = {};
  // print("Map 1: $map1");

  //MAP PODE SER NULO? SIM
  //ITEM PODE SER NULO? NÃO
  // Map<String, int>? map2;
  // print("Map 2: $map2");

  //MAP PODE SER NULO? NÃO
  //ITEM PODE SER NULO? SIM
  // Map<String, int?> map3 = {'IDADE': null};
  // print("Map 3: $map3");

  //MAP PODE SER NULO? SIM
  //ITEM PODE SER NULO? SIM
  // Map<String, int?>? map4 = {};
  // print("Map 4: $map4");

  //MAP PODE SER NULO? SIM
  //ITEM PODE SER NULO? SIM
  //CHAVE PODE SER NULA? SIM

  // Map<String?, int?>? map5 = {};
  // print("Map 5: ${map5[null]}");

  //EXEMPLOS DE MAPS
  // Map<String, String> estados = {
  //   'SP': 'São Paulo',
  //   'RJ': 'Rio de Janeiro',
  // };
  // estados['MG'] = "Minas Gerais";

  // String valor = estados['SP']!; //Leitura do mapa retorna null

  //POSSÍVEIS SOLUÇÕES
  //?? "Minas"(valor padrão)
  //estados['MG'] = null;
  //colocar a String como nula

  // print("Estados: $estados");

  //Variável não pode ser nula
  // String nome = "";
  // int idade = 10;
  // double altura = 1.10;

  //E se precisar de uma variável nula?
  // String? complemento;
  // int? numero;
  // double? preco;

  //

//operador (!) -> null assertion operator
//  int resultado = numero!;
//  print("Resultado é: $resultado");

//String? (pode ser nulo) -> Não consegue chamar métodos
//String (Não pode ser nulo) -> Pode chamar métodos

// String nome = "Douglas";
// String resultado = nome;
// print("total de caracteres: ${nome.length}");

//COMO UTILIZAR OS OPERADORES ? & !

// List<String> lista1 = ['Morango', 'Banana', 'Melão'];
// List<String>? lista2;
// List<String?> lista3 = ['Morango', null, 'Melão'];
//
// print("lista1: $lista1");
// print("lista2: $lista2");
// print("lista3: $lista3");


// List<String?> lista3 = ['Morango', null, 'Melão'];
// String valor = lista3.first!;
// print("valor é: $valor");

//Operador (?.) -> null aware operator
// List<String>? lista;
// print("Total de itens: ${lista?.length}");

// Random? random;
// random = Random();
// print("Número aleatório: ${random.nextInt(10)}");

}

