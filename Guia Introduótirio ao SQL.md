# Introdução
Precisamos conhecer um pouco sobre a SQL. Ela é uma linguagem de **consulta**, logo, toda modificação que faremos no banco de dados (alterar valor, deletar, filtrar) será feita na tabela ou banco de dados que está localizada no ambiente de trabalho que fazemos as consultas. 
Se você fosse fazer um upload do arquivo no site [SQL online](https://sqliteonline.com) e excluísse a tabela inteira, por exemplo, utilizando a função ```DELETE TABLE Nome_da_Tabela```, ela não iria desaparecer do seu computador, mas sim, do espaço de trabalho do SQL Online. 
Mas, claro, não é por isso que iremos deletar table tranquilamente. Todo bom código não prescinde da boa prática, e a boa prática é justamente fazer **backups** de segurança. 

# IDE 
O Ambiente de Desenvolvimento Integrado (IDE) que podemos utilizar é o SQL Online, como já mencionado, pois, não precisa de instalação e fazer *login*. 

# Início no SLQ
## Como criar uma tabela
Para você que está se perguntando "mas merrmão, que caraio é esse de fazer tabela escrevendo código?? Por que não fazer no simples excel da vida?". Ah, sei lá. Alguém teve a ideia e cá estamos nós utilizando e até excluindo candidatas que não sabem viu, então não reclame comigo, só estou te ajudando sua persona non grata!
Dito isto, vamos lá.

Você não pode esquecer que SQL é uma **linguagem**, assim como o é o português, inglês. Isto quer dizer que ela tem uma estrutura de signos, ou seja, quando você esreve `CREATE`, precisa designar um referente, da mesma forma que, ao dizer "manga", é preciso restringir o contexto para que alguém entenda do que se está a falar (fruta ou roupa).
Então, o referente de `CREATE` podem ser `TABLE`, `SCHEMA` ou `DATABASE`, como nosso conjunto universo (contexto) é **tabela**, então utilizamos `TABLE`. 

Então, você já aprendeu uma linha de código em SQL:
```python 
CREATE TABLE Pacientes (
    ID_Paciente INT PRYMARY KEY,
    Gênero VARCHAR(50),
    Idade INT,
    Valor_Contratado_Sessao DECIMAL(5, 2),
    Data_do_Pagamento DATE,
    Data_de_Entrada_na_Terapia DATE,
    Tipo_de_Acompanhamento VARCHAR(50)

);
```

Vamos por partes.

Aqui nós criamos uma tabela chamada 'Pacientes' com a função **CREATE TABLE**, damos os nomes das colunas, os tipos e acrescentamos ponto e vírgula (";") para fechar o código. É a mesma função que o ponto final exerce em uma frase para concluir o sentido/oração. 
O tipo da variável/coluna é necessário para que você torne aquela variável inequívoca na hora do preenchimento. Não tem como preencher a data de nascimento colocando 1988, você quer a data no formato "DD/MM/AAAA", dia, mês e ano. Então, o tipo da variável deve ser declarada.
Quando utilizamos um `PRIMARY KEY`, chave-primária, estamos dizendo: essa coluna que recebe os ID's dos pacientes, isto é, seus identificadores que será do tipo **inteiro** (números), terá valores únicos, i.e., não repetidos, e não nulos. 
Se você prestou atenção, então deve ter percebido que, no nosso exemplo, marcar uma chave-primária no identificador do paciente não faz sentido, pois, esse paciente fará mais de um pagamento, ou seja, terá seu identificador duplicado na coluna ID. Então, tome cuidado, pois, isso pode resultar em erros quando for rodar o código. 
O que fazer, neste caso? 
Podemos definir um conjunto de chaves-primárias, isto é, já que o paciente irá se repetir por pagar mais de uma vez, podemos criar outra chave-primária que o identifica e é um valor que não se repete, ou seja, a data de pagamento. Então, escreveríamos logo abaixo da última coluna criada na função **CREATE TABLE**:
```python
PRIMARY KEY(ID_Paciente, Data_do_Pagamento)

```
Por isso a importância de colocar o tipo dessa variável como DATE e não apenas como **VARCHAR**, porque aqui poderíamos ter facilmente algo como "Março" repetido uma vez por ano e, portanto, já daria erro na sintaxe. 

Bom, dado esse adendo, podemos seguir. 

### VARCHAR, CHAR e TEXT
Entreguei a você sem dizer o que raios é isto. Basicamente, são propriedades de armazenamento do banco de dados que se relacionam com a natureza de uma variável do tipo nominal. Então, VARCHAR(100) armazena uma variável nominal limitada em 100 caracteres máximo, enquanto que um dado do tipo CHAR(50) limita a variável em exatos 50 caracteres. Por fim, o dado TEXT armazena variáveis nominais sem limitação de caracteres.

### INT, DATE, DECIMAL
Aqui, temos os tipos de armazenamento das variáveis numéricas. Coloquei DATE junto para facilitar o entendimento. Então, INT é o tipo de armazenamento de dados inteiros (1,2,3,4,5,...,etc.), DECIMAL são os Reais (1.52, 2.658, etc). Por fim, DATE armazena datas (dia, mês e ano). 

--------
> Certo, então nós temos uma tabela com todas as informações já? Simples assim? Calma lá gafanhoto, não podes exigir de um esqueleto que enxergue ou cheire, é preciso fornecer os órgãos (colunas e linhas da tablea). 

### Populando a tabela


