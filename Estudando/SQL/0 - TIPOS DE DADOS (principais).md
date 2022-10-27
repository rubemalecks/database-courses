# PRINCIPAIS TIPOS DE DADOS

Ao criar uma tabela perceberemos que é preciso definir não só o nome dos campos, mas também o seu tipo.

> Lembrando que alguns SGBD’s possuem comandos diferenciados para a mesma finalidade, um exemplo disso é a indicação de uma cadeia de caracteres, pois em alguns sistemas usa-se char e em outros é usado o comando character ambos para tipificar como texto.

1. Boleanos
2. Caractere
3. Números
4. Temporais

## 1. Boleanos
BIT <- Por padrão é nulo, podendo receber 1 ou 0.

## 2. Caractere
char <- (tamanho fixo) Permite inserir até uma quantidade fixa de caracteres e sempre ocupa todo espaço reservado. Se o char for ter 50, mesmo que use menos que isso ele sempre vai ocupar 50 espaços na memoria.

VARCHAR OU NVARCHAR <- (tamanho variavel) permite inserir até uma quantidade definida de caracteres **porem** só usa o espaço que foi preenchido.

## 3. Números
### Valores Exatos
    1 - TYNYNT - Não tem valores fracionados. [-127 até 127] 
    2 - SMALLINT [-32768 até 32767]
    3 - MEDIUMINT [-8388608 até 8388607]	
    4 - INT [-2147483648]
    5 - BIGINT [-2**63 até (2**63)-1	]
    6 - NUMERIC / DECIMAL - Valores exatos, porém permite ter parte fracionada. Permitem ser especificada sua escala, que é o numero de digitos da parte fracionada. Ex: (5,2) 113,44.

## Valores Aproximados 
    1. REAL (até 15 digitos)
    2. FLOAT (mesma coisa)

## 3. Temporais