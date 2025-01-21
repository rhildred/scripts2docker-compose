# scripts2docker-compose

## exercise to convert `docker compose run` and `docker compose build` to a docker compose file


TLDR;

```bash
./toaster.sh
```

Then to create the wordpress database:

```bash
mysql -u root -h 127.0.0.1 <dbcreate.sql
```

To access database use:

```bash
mysql -u root -h 127.0.0.1
```

The assignment is to convert toaster.sh to a docker-compose file. Running `docker-compose up`, creating the database and surfing to port 8000 must bring up the wordpress language choice screen. There are no part marks. Submit the assignment by emailing a link to your repository on github.


