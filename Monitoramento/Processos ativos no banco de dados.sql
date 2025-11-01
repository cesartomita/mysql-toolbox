/*
    Identifica todos os processos do banco de dados especificado e gera comandos KILL para finalizar.
*/

SELECT
    P.ID,
    P.USER,
    P.HOST,
    P.DB,
    P.COMMAND,
    P.TIME,
    P.STATE,
    P.INFO,
    CONCAT('KILL ', P.ID, ';') AS KILL_CMD -- Comando para finalizar o processo
FROM
    INFORMATION_SCHEMA.PROCESSLIST P
WHERE
    P.DB = 'sakila'  -- Nome do seu banco de dados
ORDER BY
    P.ID;