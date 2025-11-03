/*
    Lista todas as transações InnoDB ativas no momento, incluindo estado, query e locks.

    Campos:
        trx_id: ID da transação.
        trx_state: Estado atual (ex: RUNNING, LOCK WAIT).
        trx_started: Quando começou.
        trx_query: Última query executada dentro dessa transação.
        trx_mysql_thread_id: ID da thread que abriu a transação (para correlacionar com PROCESSLIST).
*/

SELECT 
    trx_id,
    trx_state,
    trx_started,
    trx_wait_started,
    trx_requested_lock_id,
    trx_mysql_thread_id,
    trx_tables_in_use,
    trx_tables_locked,
    trx_query
FROM information_schema.innodb_trx;
