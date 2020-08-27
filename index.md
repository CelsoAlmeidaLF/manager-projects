# Meu gerenciador de projetos

  Este gerenciador de projetos é desenvolvido para gerenciar seus projetos de desenvolvimento em ambientes linux.
  <hr>

## Instalação

  Para melhor utilização dos comandos a seguir execute os comandos sitados abaixo.

```sh

# navega para pasta home
$ cd ~

# crie uma pasta .bin/objects na pasta home
$ mkdir .bin .bin/objects
```

  Após criar a pasta `.bin/objects`, copie e cole o programa na mesma.

```sh

# copia para pasta destinada ./bin/objects
$ cp gerenc-projects/gpdev.sh ~/.bin/objects

```

  Após copiar o arquivo na pasta destinada, coloque o programa na variavel de ambiente
  `PATH` e os comandos de gerenciameto de projetos
  funcionara corretamente.

```sh

# instala o programa na variavel ambiente
$ PATH="$HOME/.bin/objects/:$PATH"

# ...
$ echo '''
# GPDEV
if [ -d "$HOME/.bin/objects" ]; then
  PATH="$HOME .bin/objects:$PATH"
fi''' >> .profile

```
<hr>

## Comandos do Gerenciador

  Este programa é um exemplo simples, de como você pode gerenciar seus projetos de uma forma simples
  em ganhar tempo com atividades rotineiras de criação de novos projetos e teste de desenvolvimento.

  E um exemplo que irei utilizar, farei um projeto para web simples em `ruby-on-rails` e irei utilizar o este gerenciador simples para fazer os procedimentos rotineiros.

  O camando para o mesmo sera: `gpdev.sh -web app-web -ruby`

```sh

# cria um projeto em rubi-on-rails
$ gpdev.sh -web app-web -ruby

# executa o projeto criado
$ gpdev.sh -teste app-web -ruby

```

1. Escolha o comandos:
`-new `, `-run `, `-web `  e  `-teste`.

2. Digite o nome do projeto que ira ser o nome do diretório raiz.

3.  Em seguida digite a tecnologia que deseja trabalhar:  
`-ruby `, `-python `, `-react `, `-nodejs ` e `-angular `.

---
Editado em: Agosto de 2020
