## Passo a Passo

Abra o terminal e execute o comando abaixo :
```
bundle install      
```

Vamos instalar  o servidor Json-server:
```
npm install -g json-server
```
Agora vamos rodar o servidor Json-Server:

```
json-server --watch endpoints.json
````

O resultado será esse: 
```
\{^_^}/ hi!

Loading db.json
Done

Resources
http://localhost:3000/movies

Home
http://localhost:3000

Type s + enter at any time to create a snapshot of the database
Watching...

```

## Executando os testes

Abra uma janela do terminal e digite o comando abaixo para executar todas as features:

```
cucumber
```
Abra uma janela do terminal e digite o comando abaixo para a feature correspondente:
```
cucumber features/get.feature
cucumber features/post.feature
cucumber features/put.feature
cucumber features/delete.feature
```
Execução com report padrão:
```
cucumber features/get.feature --format html --out get_report.html
cucumber features/post.feature --format html --out post_report.html
cucumber features/put.feature --format html --out put_report.html
cucumber features/delete.feature --format html --out delete_report.html
```


