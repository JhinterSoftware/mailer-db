FROM postgres:17

# Crea un directorio temporal de trabajo
WORKDIR /app

# Copia todos los archivos desde tu carpeta init/ (puede tener subdirectorios)
COPY scripts/ ./scripts/

# Encuentra todos los archivos .sql y los copia al directorio donde postgres los ejecuta
RUN mkdir -p /docker-entrypoint-initdb.d && \
    find ./scripts -type f -name "*.sql" -exec cp {} /docker-entrypoint-initdb.d/ \;