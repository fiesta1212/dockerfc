FROM nginx:latest

# Создаем каталог для файлов настроек и index.html
RUN mkdir -p /etc/nginx/conf.d
RUN mkdir -p /usr/share/nginx/html

# Копируем файлы настроек и index.html внутрь
COPY conf.d/* /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/

# Установка прав на файлы
RUN chown -R nginx:nginx /etc/nginx/conf.d
RUN chown -R nginx:nginx /usr/share/nginx/html

# Запуск Nginx
CMD ["nginx", "-g", "daemon off;"]