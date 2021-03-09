# SISTEMA USANDO CHARTJS + PHP +MYSQL

- Criação da base de dados;
- Criação das tabelas (consultar arquivo cartjs.sql);
- Rodar o comando:
CREATE VIEW venda_vendedor AS 
SELECT 
    v.vendedor_id, SUM(v.venda), vv.nome 
FROM 
    venda AS v INNER JOIN vendedor AS vv 
ON 
    vv.id = v.vendedor_id 
GROUP BY 
    vv.id;
- O comando acima executado no banco de dados irá criar uma view que será executada automaticamente sempre que as tabelas vendedor e funcionários forem atualizados. 
- Vídeo usado como base para desenvolvimento: (Configurando options do Chart.JS com PHP e MySQL - Arquivo pronto)(https://www.youtube.com/watch?v=g3XBHspMnjw&ab_channel=RicardoMilbrath)

# Finalizado.


