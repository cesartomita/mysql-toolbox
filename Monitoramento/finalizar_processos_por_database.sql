-- Este script identifica todos os processos ativos do banco de dados especificado e gera comandos KILL para elimitar.
-- ATENÇÃO: Use com cautela, pois encerrará conexões ativas.

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
    P.DB = 'DATABASE_NAME'  -- Substitua pelo nome real do banco
ORDER BY
    P.ID;
