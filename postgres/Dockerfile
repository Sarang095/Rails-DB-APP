FROM postgres:13

# Set environment variables
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=admin@123

# Copy initialization script
COPY init.sql /docker-entrypoint-initdb.d/
