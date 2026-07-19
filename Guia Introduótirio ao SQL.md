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
CREATE TABLE Pacientes;
```
Aqui nós criamos uma tabela chamada 'Pacientes' e acrescentamos ponto e vírgula (";") para fechar o código. É a mesma função que o ponto final exerce em uma frase para concluir o sentido/oração. 

Certo, então nós temos uma tabela com todas as informações já? Simples assim? Calma lá gafanhoto, não podes exigir de um esqueleto que enxergue ou cheire, é preciso fornecer os órgãos (colunas e linhas da tablea). 
