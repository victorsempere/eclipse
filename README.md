Comando para construir la imagen:
docker build -t eclipse .

Pasos para arrancar Eclipse:
1) Lanzar xMing
2) docker run -ti --rm -v eclipseRepo:/root/repo -v eclipseWorkspace:/root/eclipse-workspace -e DISPLAY=%1:0.0 eclipse