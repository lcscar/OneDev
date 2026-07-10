# Scripts Git para Windows

Scripts simples para o uso normal deste repositório.

## Ordem de uso

1. `01-clone.cmd` — clona o repositório.
2. `02-status.cmd` — mostra branch, alterações e commit atual.
3. `03-pull.cmd` — baixa atualizações da branch atual.
4. `04-commit-push.cmd` — adiciona tudo, cria commit e envia.

## Exemplos

```cmd
01-clone.cmd
02-status.cmd
03-pull.cmd
04-commit-push.cmd
```

O clone padrão é criado em `%USERPROFILE%\OneDev`.

Para escolher outro diretório:

```cmd
01-clone.cmd C:\Projetos\OneDev
```

Os arquivos são `.cmd` comuns, sem PowerShell e sem dependências além do Git para Windows.
