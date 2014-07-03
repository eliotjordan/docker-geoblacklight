**Run geoblacklight alpha**  

    docker run -d -e SOLR_URL=url -p 8080:3000 eliotjordan/geoblacklight:alpha

**Run latest geoblacklight development branch:**  

    docker run -d -e SOLR_URL=url -p 8080:3000 eliotjordan/geoblacklight:dev



url = path to solr instance with geoblacklight schema (e.g. http://100.000.00.000:8983/solr )
