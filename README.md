# serverpod_demo
creating a demo rest service with serverpod and maria db

### setup mariadb using mariadb columnstore engine 
 ` ./setup_mariadb.sh `
 
after that u can run this in terminal to write sql commands in maria db  
` docker exec -it mariadb-columnstore mysql -u root -p=my_password `

### setup sever pod
follow getting started page for serverpod :- https://docs.serverpod.dev/get-started

### Running server 
`   dart bin/main.dart --apply-migrations  `

### caching in server pod
Docs :- https://docs.serverpod.dev/concepts/caching

there are three caches :- Two caches are local to the server handling the current session
and one is distributed across the server cluster through Redis
Types 
Local cache :- subtypes (regular and priority)

### Serverpod tools
1. serverpod cli :- cli to generate code, migrations etc
2. Serverpod insights :- server's logs and health metric (need to install specific ver matching serverpod version)
3. serverpod LSP :- Language server protocol, (instead recommend VS code extension for serverpod)
