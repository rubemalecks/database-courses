# SQL (_Structure Query Language_)

![SQL](../img/SQL_1232.png)



É uma linguagem abrangente, possui comandos para:

- Definição
- Consulta
- Atualização de dados

Pode ser vista em duas divisões:

- núcleo
- pacote

> - O núcleo dever ser implementados por todos os SGBDs.
> - Os pacotes ...

## Subgrupos da linguagem SQL

### Principais

- DDL
- DML
- DQL
  > outros:
- DCL
- DTL

# **DDL** - Linguagem de Definição de Dados (_Data Definition Language_)

- Especifica o esquema do Banco de Dados
- Responsável pela criação, alteração e exclusão de tabelas

# **DML** - Linguagem de Manipulação de Dados (_Data Manipulation Language_ )

- Responsável pela manipulação do Banco de dados
  - Inserir novos dados;
  - Alterar dados já persistidos
  - Excluir dados

# **DQL** - Linguagem de Seleção de Dados (_Data Query Language_)

- Responsável pela seleção de registros em uma ou mais tabelas da Base de Dados

# **DCL** - Linguagem de Controle de Dados (_Data Control Language_)

- Responsável por controlar a autorização e direitos de acesso ao Banco de dados;
- Comandos relacionados a segurança do Banco de dados;

# **DTL** - Linguagem de Transação de Dados (_Data Transaction Language_)

- Responsável pelo gerenciamento das diferentes transações de uma banco de dados;

# COMANDOS BÁSICOS SQL
## DEFINIÇÃO DE DADOS (DDL)
  - CREATE (criar)
  - ALTER (alterar)
  - DROP (apagar a tabela)

## MANIPULAÇÃO DE DADOS (MDL)

> comandos usados pelo usuário comum

- INSERT (inserir)
- UPDATE (atualizar)
- DELETE/REMOVE (deletar o dado)

## SELEÇÃO DE DADOS (DQL OU DML)
> ALGUNS AUTORES JUNTAM O DQL AO DML

- **SELECT**
  - DISTINCT (distinção)
  - IS NULL / IS NOT NULL;
  - COUNT, SUM, AVG, MIN, MAX (Funções Embutidas)
  - GROUP BY (_agrupar por ..._)
    - HAVING (_condição p/ agrupar_)
  - BETWEEN (_determinado range de registros_)
  - LIKE (_utilizado para buscar por uma determinada string dentro de um campo com valores textuais_)
  - +, -, \*, / (Comandos aritméticos)
  - ORDER BY (ASC, DESC) _ordenar os dados(ascendente ou descendente_)

## CONTROLE DE DADOS (DCL)

- GRANT (_atribuir permissão_)
- REVOKE (_revogar permissão_)

## TRANSAÇÃO DE DADOS (TDL)

- COMMIT (_consolidar transação / executa os comandos em definitivo_)
- ROLLBACK (_desfazer_)
- SAVEPOINT (_ponto de salvamento na transação_)

# TIPOS DE DADOS SQL

### TIPOS PRIMITIVOS SQL

![tipos primitivos](../img/TiposPrimitivosSQL.png)

- NÚMERICOS:

  - Inteiros
  - Ponto Flutuante(Real)
  - Decimal
    - Decimal(i, j) onde i é o número total de dígitos decimais e j, refere-se ao total de digitos depois da virgula
- CADEIA DE CARACTERES
- BOOLEANOS: TRUE, FALSE OU UNKNOWN

- DATE

  - Contém 10 posições e seus componentes são ANO, MÊS, E DIA. (yyyy-mm-dd)

- TIME: Contém 8 posições com os componentes HORA, MINUTO E SEGUNDO. (hh:mm:ss)

- BLOB (binary large object): Armazena imagens, vídeos e áudio.
- CLOB (character large object): Armazena textos, no formato de livros disponíveis no ORACLE e DB2 (SQL-99)

