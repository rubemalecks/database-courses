## ALTERANDO UMA TABELA

```SQL
USE banco_dados_exemplo;
ALTER TABLE meus_contatos ADD column sexo CHAR(1);
```

> Adiciona no final uma nova coluna

### Também podemos dropar uma coluna especifica

```sql
ALTER TABLE meus_contatos
DROP COLUMN sexo;
```

Por padrão essa coluna fica com valores null, caso não sejam adicionados ... visto também que são novos.

### RENOMEAR CAMPO DA TABELA E/OU ALTERAR TIPO

```sql
ALTER TABLE DEPARTAMENTO CHANGE SGL SIGLA CHAR(5) NOT NULL;
```
Sintaxe:

ALTER TABLE NOME_TABELA CHANGE NOME_ATUAL NOVO_NOVE CHAR(x) CONSTRAINT;

> ### ALTEROU O NOME DA COLUNA SGL P/ SIGLA ALÉM DE DEFINIR COMO CHAR(5) E NOT NULL.
