/*Questão 01*/
SELECT COUNT(*) FROM farmacia;

/*Questão 02*/
SELECT MIN(cadastro) FROM usuarios;

/*Questão 03*/
SELECT MAX(cadastro) FROM usuarios;

/*Questão 04*/
SELECT AVG(idade) FROM usuarios WHERE idade >= 18;

/*Questão 05*/
SELECT sum(estoque) FROM farmacia WHERE categoria = 'blue' OR categoria = 'black';

/*Questão 06*/
SELECT categoria, SUM(estoque) FROM farmacia WHERE categoria IS NOT NULL GROUP BY categoria;

/*Questão 07*/
SELECT SUM(estoque) FROM farmacia WHERE categoria IS NULL;

/*Questão 08*/
SELECT estoque FROM farmacia WHERE categoria IS NULL;

/*Questão 09*/
SELECT concat(medicamento, ' - ', categoria) from farmacia;

/*Questão 10*/
SELECT concat(id, ' - ', medicamento, ' (', COALESCE (categoria, 'sem categoria'), ')') from farmacia;

/*Questão 11*/
SELECT nome, idade, CAST(cadastro AS date) FROM usuarios WHERE CAST(cadastro AS date) > CAST('2020-01-01' as date);

/*Questão 12*/
SELECT nome, idade, email, AGE(CAST(cadastro AS timestamp)) FROM usuarios WHERE idade < 18;

/*Questão 13*/
SELECT nome, idade, email, AGE(CAST(cadastro AS date)) FROM usuarios WHERE idade > 60;

/*Questão 14*/
SELECT categoria, estoque FROM farmacia WHERE categoria IS NOT NULL;

/*Questão 15*/
SELECT idade, COUNT(*) FROM usuarios WHERE idade > 18 GROUP BY idade;

/*Questão 16*/
SELECT categoria, COUNT(*) FROM farmacia GROUP BY categoria;