# Dockerfile de Unrar

Este es un Dockerfile simple que se utiliza para crear una imagen de Docker que contiene la herramienta `unrar`. La imagen también incluye un script de entrada que se utiliza para descomprimir archivos `.rar`.

## Uso

Para utilizar esta imagen de Docker, primero debes construirla. Para ello, ejecuta el siguiente comando en la misma carpeta donde se encuentra el archivo `Dockerfile`:

```cli
docker build -t unrar-container .
```

Una vez que la imagen se haya construido correctamente, puedes utilizarla para descomprimir archivos `.rar` ejecutando el siguiente comando:

```cli
docker run -it -v $PWD:/unrar unrar-container x <archivo.rar>
```

Este comando montará el directorio actual en tu máquina host dentro del contenedor Docker en la ruta `/unrar`, y descomprimirá el archivo `.rar` especificado en la carpeta `/unrar`.

También puedes utilizar este Dockerfile para descomprimir archivos `.rar` en una carpeta específica en tu máquina host. Para ello, puedes utilizar el siguiente comando:

```cli
docker run -it -v $PWD:/unrar unrar-container x <archivo.rar> /unrar/<carpeta>
```

Este comando montará el directorio actual en tu máquina host dentro del contenedor Docker en la ruta `/unrar`, y descomprimirá el archivo `.rar` especificado en la carpeta `/unrar/<carpeta>`.

## Contribuciones

Si deseas contribuir a este proyecto, por favor crea un fork del repositorio y envía tus cambios a través de un pull request. Cualquier contribución es bienvenida y apreciada.

## Licencia

Este Dockerfile se distribuye bajo la licencia MIT. Consulta el archivo LICENSE para obtener más información.
