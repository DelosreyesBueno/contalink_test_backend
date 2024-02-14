# contalink_test_backend

Descripción breve del proyecto.

## Requisitos

- Ruby (versión 3.3.0)
- Rails (versión 7.3.3)
- PostgreSQL

## Instalación

1. Clonar el repositorio:

    ```bash
    git clone git@github.com:DelosreyesBueno/contalink_test_backend.git
    ```

2. Instalar las gemas necesarias con Bundler:

    ```bash
    cd contalink_test_backend
    bundle install
    ```

## Configuración

1. Copiar el archivo de configuración de la base de datos:

    ```bash
    cp config/database.yml.example config/database.yml
    ```

2. Editar el archivo `config/database.yml` con los detalles de tu base de datos.

## Base de Datos

1. Crear la base de datos y ejecutar las migraciones en caso de ser necesario:

    ```bash
    rails db:create
    rails db:migrate
    ```

## Uso

1. Levantar el servidor:

    ```bash
    rails server
    ```
