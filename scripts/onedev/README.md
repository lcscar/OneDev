# OneDev no Windows

## Requisito

- Java 17 ou superior disponível no `PATH`.

Confira com:

```cmd
java -version
```

## Primeira execução

```cmd
01-configurar-e-iniciar.cmd
```

Esse script:

1. copia o OneDev para `%LOCALAPPDATA%\OneDev`;
2. configura acesso somente pelo próprio notebook;
3. usa a porta `6610`;
4. inicia o servidor em modo console;
5. abre `http://localhost:6610`.

## Próximas execuções

```cmd
02-iniciar.cmd
```

Para parar o OneDev, volte à janela do servidor e pressione `Ctrl+C`.

O modo console não instala serviço do Windows e normalmente não exige administrador.
