# apache-simple
A simple ubuntu container running apache. To build run the following in the pulled repo:

    docker build -t cohenaj194/apache-simple .
    docker run --rm -d -p 80:80 cohenaj194/apache-simple 
