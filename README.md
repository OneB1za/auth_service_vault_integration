# auth_service_vault_integration
```
cd auth_service_vault_integration
```

docker build -t auth_service_app .

docker-compose up -d

docker exec -it vault-server vault login root

docker exec -it vault-server vault write database/config/postgres \
    plugin_name=postgresql-database-plugin \
    allowed_roles="django-app" \
    connection_url="postgresql://{{username}}:{{password}}@postgres:5432/users" \
    username="kirill" \
    password="admin"

docker exec -it vault-server vault write database/roles/django-app \
    db_name=postgres \
    creation_statements="CREATE ROLE \"{{name}}\" WITH LOGIN PASSWORD '{{password}}' VALID UNTIL '{{expiration}}'; GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO \"{{name}}\";" \
    default_ttl="1h" \
    max_ttl="24h"

docker exec -it vault-server vault read database/creds/django-app
