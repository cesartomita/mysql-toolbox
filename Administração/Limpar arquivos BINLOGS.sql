/*
    Remove os arquivos de log binário (binary logs) gerados há mais de 7 dias.

    O comando PURGE BINARY LOGS é usado para apagar logs antigos e liberar espaço em disco.

    Atenção:
    É importante executar essa operação com cuidado, pois os binlogs são usados para:
    - Replicação entre servidores (master > slave)
    - Recuperação de dados (point-in-time recovery)
    - Antes de executar, certifique-se de que nenhum servidor de réplica depende desses logs.
    - Execute com privilégios administrativos (SUPER ou BINLOG_ADMIN).
*/

PURGE BINARY LOGS BEFORE NOW() - INTERVAL 7 DAY;