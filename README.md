Comando para construir la imagen:
docker build -t eclipse .

Pasos para arrancar Eclipse:
1) Lanzar xMing
2) docker run -ti --rm -v repo:/root/repo -v workspace:/root/workspace -e DISPLAY=%1:0.0 eclipse