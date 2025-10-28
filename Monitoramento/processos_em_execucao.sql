/*
    Processos em execução:

    Id: identificador único da thread/conexão.
    User: usuário que iniciou a conexão.
    Host: origem da conexão.
    db: banco de dados em uso (pode ser NULL).
    Command: tipo de comando que a thread está executando.
    Time: tempo em segundos que a thread está no estado atual.
    State: estado atual da thread.
    Info: a consulta SQL ou comando que está sendo executado.
*/

SHOW FULL PROCESSLIST;