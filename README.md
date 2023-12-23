## Simple PHP project with docker and vs code

### Run project
```sh
docker compose up -d
```

### Run tests
```sh
docker compose exec app ./vendor/bin/phpunit
```

---
    This project is ready to run tests with PHPUnit test explorer extension: https://marketplace.visualstudio.com/items?itemName=recca0120.vscode-phpunit
---