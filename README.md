# serverpod_demo
creating a demo rest service with serverpod and maria db

### setup mariadb using mariadb columnstore engine 
 ` ./setup_mariadb.sh `
 
after that u can run this in terminal to write sql commands in maria db  
` docker exec -it mariadb-columnstore mysql -u root -p=my_password `

### setup sever pod
follow getting started page for serverpod :- https://docs.serverpod.dev/get-started