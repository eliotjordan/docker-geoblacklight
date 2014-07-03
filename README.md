**Run geoblacklight alpha**  

    docker run -d -e SOLR_URL=url -p 8080:3000 eliotjordan/geoblacklight:alpha

**Run latest geoblacklight development branch:**  

    docker run -d -e SOLR_URL=url -p 8080:3000 eliotjordan/geoblacklight:dev



url = path to solr instance with geoblacklight schema (e.g. http://127.0.0.1:8983/solr )
