# Passo 01: Instancio uma imagem de SO linux
# FROM python:3.7
FROM fedora:29

# Passo 02: Vou mapear os volumes (diretórios do container) onde deixarei
# os testes (inputs) e os resultados (outputs).
VOLUME /opt/robotframework/results
VOLUME /opt/robotframework/tests

# Passo 03: Vou rodar os comandos que instalam tudo que preciso para rodar o robot
RUN dnf upgrade -y && dnf install -y python37
RUN python3 -m pip install --user virtualenv

# RUN python3 -m venv env

RUN python3 -m pip install --user --upgrade pip

# Passo 04: Instalo o Robot e as libraries que precisarei. No caso abaixo,
# especifiquei a versão do robot que eu quero com isso ele pegara a mais recente liberada.
# Obs.: As barras são para indicar quebra de linha, mas o comando é um só,
# é como se eu tivesso rodando tudo numa linha só.
RUN pip3 install robotframework \
robotframework-requests==0.5.0 \
robotframework-seleniumlibrary \
robotframework-databaselibrary \
robotframework-sshlibrary==3.2.1
