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

### RENOMEAR E/OU ALTERAR TIPO

```sql
ALTER TABLE DEPARTAMENTO CHANGE SGL SIGLA CHAR(5) NOT NULL;

```

> ### ALTEROU O NOME DA COLUNA SGL P/ SIGLA ALÉ DE DEFINIR COMO CHAR(5) E NOT NULL.
