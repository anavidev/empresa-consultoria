USE empresa_consultoria

-- projetos com valor acima de R$60.000,00
SELECT 
    id_projeto AS "ID do Projeto",
    id_empresa AS "ID da Empresa", 
    numero_projeto AS "Numero do Projeto", 
    data_inicio AS "Data Inicial",
    data_fim AS "Data de Termino",
    valor AS "Valor do Projeto"
FROM Projeto
WHERE valor > 60000.00

-- consultores cujo nome comeca com "M"
SELECT
    id_consultor AS "ID do Consultor",
    nome AS "Nome do Consultor",
    cpf AS "CPF do Consultor",
    especializacao AS "Especializacao do Consultor"
FROM Consultor
WHERE nome LIKE 'M%'


-- data inicial, data de termino e valor para os Projetos com data de termino entre "2024-06-01" e "2024-09-30"
SELECT data_inicio AS "Data Inicial", data_fim AS "Data de Termino", valor AS "Valor do Projeto"
FROM Projeto
WHERE data_fim BETWEEN '2024-06-01' AND '2024-09-30'

-- todos os dados de empresas de clientes, cujos codigos estejam num conjunto cujos valores estão entre de 1 a 3, inclusive. 
SELECT
    id_empresa AS "ID da Empresa",
    nome AS "Nome da Empresa",
    endereco AS "Endereco da Empresa"
FROM Empresa
WHERE id_empresa BETWEEN 1 AND 3

-- numero do projeto e valor do projeto, ordenados por valor em ordem decrescente 
SELECT numero_projeto AS "Numero do Projeto", valor AS "Valor do Projeto"
FROM Projeto
ORDER BY valor DESC

-- projetos com valor de ate R$ 30.000,00 e que pertençam a empresa com codigo da empresa igual a 1 
SELECT 
    id_projeto AS "ID do Projeto", 
    id_empresa AS "ID da Empresa", 
    numero_projeto AS "Numero do Projeto", 
    data_inicio AS "Data Inicial",
    data_fim AS "Data de Termino",
    valor AS "Valor do Projeto"
FROM Projeto
WHERE valor < 30000.00 AND id_empresa = 1

-- nome e a especializacao do consultor que tenha a especializacao em "Analise de Sistemas"
SELECT nome AS "Nome do Consultor", especializacao AS "Especializacao do Consultor"
FROM Consultor
WHERE especializacao = 'Analise de Sistemas'

-- custo total de todos os projetos 
SELECT SUM(valor) AS "Custo Total dos Projetos"
FROM Projeto

-- valor medio de horas trabalhadas pelos consultores nos projetos 
SELECT ROUND(AVG(horas_consultor),2) AS "Media de Horas Trabalhadas"
FROM Projeto_Consultor

-- numero de consultores que atuaram em cada projeto, agrupando-os pelo numero do projeto
SELECT id_projeto AS "Identificacao do Projeto", COUNT(id_consultor) AS "Quantidade de Consultores"
FROM Projeto_Consultor
GROUP BY id_projeto