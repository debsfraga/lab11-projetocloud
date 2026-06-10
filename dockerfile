# Imagem base: Nginx oficial (leve, baseada em Alpine)
FROM nginx:alpine

# Metadados do projeto
LABEL maintainer="seu-email@exemplo.com"
LABEL project="LAB11 - DermaPura Cosméticos"
LABEL version="1.0"

# Remover configuração padrão do Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copiar nossa configuração personalizada do Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar a one-page para o diretório padrão do Nginx
COPY index.html /usr/share/nginx/html/index.html

# Expor a porta 80
EXPOSE 80

# Comando de inicialização (já é o padrão da imagem nginx, mas deixamos explícito)
CMD ["nginx", "-g", "daemon off;"]
