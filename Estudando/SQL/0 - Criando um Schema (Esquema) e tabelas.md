# CRIANDO UM ESQUEMA

![SCHEMA](../img/CRIANDO%20SCHEMA.png)

# CRIANDO TABELAS

![CLUBE](../img/table_base1.png)
### USAREMOS ESTE ESQUEMA COMO BASE

![selecSchema](../img/select%20schema.png)
- 1º - Selecionar o esquema clicando;
## ou
![selectSchema](../img/select%20schema2.png)
- 1º - Selecionar o esquema via linha de comando (_USE SCHEMA_);


## CRIANDO TABELA

```sql
USE clube_do_livro;
CREATE TABLE LIVROS (
ID_LIVRO INT NOT NULL,
NOME_LIVRO VARCHAR(100) NOT NULL,
AUTORIA VARCHAR(100) NOT NULL,
EDITORA VARCHAR(100) NOT NULL,
CATEGORIA VARCHAR(100) NOT NULL,
PREÇO DECIMAL(5,2) NOT NULL,

PRIMARY KEY (ID_LIVRO)

);
```

![primaryTable](../img/PRIMEIRATABLE.png)

