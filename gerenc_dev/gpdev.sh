#!/bin/bash
# -------------------------------------------
# projeto: Gerenciador de Projetos
# desenvolvedor: Celso de Almeida Leite F.;
# descrição: Meu Gerenciador de Projetos;
# versão: 1.0;
# data da criação: Julho: 28, 2020;
# -------------------------------------------
# INSTALL Projeto GPD Instalado
# if [ -d "$HOME/.bin/objects" ] ; then
#    PATH="$HOME/.bin/objects/gpdev:$PATH"
# fi
# -------------------------------------------

# VARIAVEIS
ROOT="$HOME/Documentos/Desenvolvimento"

CMMD=$1
NEWPRJ=$2
TEC=$3

# FUNÇÃO DE PASTAS DAS TECNOLOGIAS
TECNOLGIA(){
    if [ -n $TEC ]; then
        case $TEC in
            -python)
                cd "$ROOT/Python";;
            -ruby)
                cd "$ROOT/Ruby";;
            -cpp)
                cd "$ROOT/Cpp";;
            -nodejs)
                cd "$ROOT/NodeJs";;
            -angular)
                cd "$ROOT/Angular";;
            -react)
                cd "$ROOT/React";;
            *) cd $ROOT;echo;;
        esac;
    else
        echo ".";
    fi;
}

# FUNÇÃO DE NOVOS PROJETOS EM LAB
NOVOPROJ(){
    if [[ -n $2 ]]; then
        case $2 in
            -python)
                if [ -d $1 ]; then
                    echo "Pasta: $1 já exite !";echo;ls -l;
                else
                    pwd;mkdir $1;atom $1/app.py;ls -l;
                fi;;
            -ruby)
                if [ -d $1 ]; then
                    echo "Pasta: $1 já exite !";echo;ls -l;
                else
                    pwd;mkdir $1;atom $1/app.rb;ls -l;
                fi;;
            -cpp) 
                echo "CPP";echo;pwd;echo;ls -l;;
            *) echo "...";;
        esac;
    else
        echo "..";
    fi;
}

# FUNÇÃO DE NOVOS PROJETOS EM DEV/WEB
NPROJWEB(){
    if [[ -n $2 ]]; then
        case $2 in
            -python)
                if [ -d $1 ]; then
                    pwd;echo;echo "projeto: $1, já existe";echo;ls -l;
                else
                    pwd;django-admin startproject $1;echo;ls -l;
                fi;;
            -ruby)
                if [ -d $1 ]; then
                    pwd;echo;echo "projeto: $1, já existe";echo;ls -l;
                else
                    pwd;rails new $1;echo;ls -l;
                fi;;
            -nodejs)
                if [ -d $1 ]; then
                    pwd;echo;echo "projeto: $1, já existe";echo;ls -l;
                else
                    pwd;echo;echo "....gerador web nodejs";
                fi;;
            -angular)
                if [ -d $1 ]; then
                    pwd;echo;echo "projeto: $1, já existe";echo;ls -l;
                else
                    pwd;ng new $1;echo;ls -l;
                fi;;
            -react)
                if [ -d $1 ]; then
                    pwd;echo;echo "projeto: $1, já existe";echo;ls -l;
                else
                    pwd;npx create-react-app $1;echo;ls -l;
                fi;;
            *) echo "...";;
        esac;
    else
        echo "..";
    fi;
}

# FUNÇÃO DE YTESTE P/ PROJETOS EM DEV/WEB
PROJWEBTST(){
    if [[ -n $2 ]]; then
        case $2 in
            -python)
                if [ -d $1 ]; then
                    pwd;echo;echo "projeto: $1, existe";echo;ls -l;echo;
                    cd $1;python3 manage.py runserver;
                else
                    pwd;echo;echo "Não exite";echo;ls -l;
                fi;;
            -ruby)
                if [ -d $1 ]; then
                    pwd;echo;echo "projeto: $1, existe";echo;ls -l;echo;
                    cd $1;rails s;
                else
                    pwd;echo;echo "Não exite";echo;ls -l;
                fi;;
            -nodejs)
                if [ -d $1 ]; then
                    pwd;echo;echo "projeto: $1, existe";echo;ls -l;
                else
                    pwd;echo;echo "Não exite";echo;ls -l;
                fi;;
            -angular)
                if [ -d $1 ]; then
                    pwd;echo;echo "projeto: $1, existe";echo;ls -l;
                    cd $1;ng serve --open;
                else
                    pwd;echo;echo "Não exite";echo;ls -l;
                fi;;
            -react)
                if [ -d $1 ]; then
                    pwd;echo;echo "projeto: $1, existe";echo;ls -l;echo;
                    cd $1;yarn start
                else
                    pwd;echo;echo "Não exite";echo;ls -l;
                fi;;
            *) echo "...";;
        esac;
    else
        echo "..";
    fi;
}

# FUNÇÃO DE EXECUÇÃO DE PROJETOS EM LAB
RUNPROJ(){
    if [[ -n $2 ]]; then
        case $2 in
            -python)
                if [ -d $1 ]; then
                    pwd;echo;echo "projeto $1 existe !";echo;ls -l;clear;
                    python $1/app.py;
                else
                    pwd;echo;echo "Alert: Não existe projeto !";
                fi;;
            -ruby)
                if [ -d $1 ]; then
                    pwd;echo;echo "projeto $1 existe !";echo;ls -l;clear;
                    ruby $1/app.rb;
                else
                    pwd;echo;echo "Alert: Não existe projeto !";
                fi;;
            -cpp)
                if [ -d $1 ]; then
                    pwd;echo;echo "projeto $1 existe !";echo;ls -l;
                else
                    pwd;echo;echo "Alert: Não existe projeto !";
                fi;;
            *) echo "...";;
        esac;
    else
        echo "..";
    fi;
}

#INICIO DO PROGRAMA 
clear
BEGIN(){
    if [ -n $CMMD ]; then
        TECNOLGIA;
        case $CMMD in 
            -new)
                if [ -d "Lab" ]; then
                    cd "Lab";NOVOPROJ $NEWPRJ $TEC;
                else
                    echo "Alert: Informe a tecnologia !";
                fi;;
            -run)
                if [ -d "Lab" ]; then
                    cd "Lab";RUNPROJ $NEWPRJ $TEC;
                else
                    echo "Alert: Informe a tecnologia !";
                fi;;
            -web)
                if [ -d "Dev" ]; then
                    cd "Dev";NPROJWEB $NEWPRJ $TEC;
                else
                    echo "Alert: Informe a tecnologia !";
                fi;;
            -teste)
                if [ -d "Dev" ]; then
                    cd "Dev";PROJWEBTST $NEWPRJ $TEC;
                else
                    echo "Alert: Informe a tecnologia !";
                fi;;
            *)
                echo ".";
        esac;
    fi;echo;
};BEGIN

