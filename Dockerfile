FROM ubuntu:latest
# Atualizar os pacotes e instalar o git
RUN apt-get update && apt-get install -y git
# Criar um novo usuário chamado "developer" (ou o nome que preferir)
RUN useradd -m developer
# Mudar para o usuário "developer"
USER developer
# Definir o diretório home do usuário como diretório de trabalho
WORKDIR /home/developer
# Manter o container em execução
CMD ["tail", "-f", "/dev/null"]