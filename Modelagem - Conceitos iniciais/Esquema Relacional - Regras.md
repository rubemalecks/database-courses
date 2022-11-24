# BANCO DE DADOS

## Esquema Relacional

- p/ cada entidade forte vamos criar uma relação

  - p/ cada atributo simples representar
  - para cada atributo composto decompor m seus atributos simples
  - identificar a chave primaria e[sublinhar]
  - atributos multivalorados vão para outra relação

- IDENTIFICAR CARDINALIDADES 1x1
  - Escolhe aquela que tem participação total, para definir o relacionamento (ex: PROFESSOR x DEPARTAMENTO), o departamento p
  - trazer chave que tem participação parcial (**chave_fk**) e trazer para a que tem participação total. DEPARTAMENTO (código, nome, **matric_coord_FK**, bienio)
  - se tiver algum atributo na relação trazer também[biênio]
- RELACIONAMENTO 1xN (PROFESSOR **OFERTA** DISCIPLINA) ou (PROFESSOR **ORIENTA** ALUNO)
  - PEGAR CHAVE DO LADO 1, E TRAZER COMO CHAVE ESTRANGEIRA [DISCIPLINA (código, nome, carga horaria, matric_prof_FK, semestre)] e trazer também os atributos do relacionamento
- RELACIONAMENTO NxN
  - CRIAR NOVA RELAÇÃO
    - TRAZER CHAVES PRIMARIAS DE ENTIDADES COMO ESTRANGEIRA
    - TRAZER COMO ESTRANGEIRA
    - A CHAVE PRIMARIA VAI SER FEIRA COM AS DUAS CHAVES ESTRANGEIRAS (**CHAVE COMPOSTA**)
- AUTORELACIONAMENTO (ALUNO **REPRESENTA** ALUNO)
  - CRIAR UM NOVO CAMPO DO MESMO TIPO DA CHAVE PRIMARIA COMO CHAVE ESTRANGEIRA FK
  - INCLUI NOVO CAMPO DO MESMO TIPO (DISCIPLINA (cod_disc_FK, **cod_pre_req**) [chave composta]
- MULTIVALORADO (TELEFONE)
  - COLOCAR ATRIBUTO TRAZER CHAVE PRIMARIA QUE O ATRIBUTO FAZ PARTE e chave vai ser a composição dos 2x atributos
