# Overview 

The current project consists in ETL using logstash as data transfer and postgres as data source with opensearch container as data target.

<hr>

## Load data in postgres


```shell
    $ make db_restore_backup
```

The command above will load the next tables in postgres database:

**City Table**

!['city_table'](./database/tables_pictures/city_table.png)

**Country Table**

!['country_table'](./database/tables_pictures/country_table.png)

**Country Language Table**

!['language'](./database/tables_pictures/country_language_table.png)
