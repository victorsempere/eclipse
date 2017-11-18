Use www.fromlatest.io to optimize image

Comando para construir la imagen:
docker build -t eclipse .

Pasos para arrancar Eclipse:
1) Lanzar xMing

2) Lanzar comando docker para Eclipse:
2.1) Comando: docker run -ti --rm -v eclipseRepo:/root/repo -v eclipseWorkspace:/root/eclipse-workspace -e DISPLAY=192.168.1.132:0.0 eclipse 
2.2) Bat: launch.bat {IP} {Eclipse repository volume} {Eclipse workspace volume}

3) Clonar repositorio (si no queremos hacerlo desde Eclipse):
3.1) Comando: docker run -ti --rm -v tmpRoot:/root -v eclipseRepo:/git alpine/git clone {url git repository}
3.2) Bat: cloneRepo.bat {repository docker volume} {url to git repository}
