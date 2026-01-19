# Gunakan image Nginx
FROM nginx:alpine

# Copy file HTML ke direktori Nginx
COPY index.html /usr/share/nginx/html/index.html
COPY css /usrshare/nginx/html/css
COPY img /usr/share/nginx/html/img

# Expose port 80
EXPOSE 80

# Jalankan Nginx
CMD ["nginx", "-g", "daemon off;"]
