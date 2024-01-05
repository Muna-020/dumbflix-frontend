<<<<<<< HEAD
FROM node:10.23.0-alpine

WORKDIR apps

COPY . .

=======
# Gunakan Node.js versi 10.23.0-alpine sebagai base image
FROM node:10.23.0-alpine

# Set working directory di dalam kontainer
WORKDIR /app

# Salin seluruh konten proyek ke dalam kontainer
COPY . .

# Instal dependensi
>>>>>>> f5a8b87 (new update)
RUN npm install

RUN npm install pm2 -g

<<<<<<< HEAD
EXPOSE 3000

=======
# Expose port yang akan digunakan oleh aplikasi frontend
EXPOSE 3000

# Perintah yang akan dijalankan saat kontainer berjalan
>>>>>>> f5a8b87 (new update)
CMD ["pm2-runtime", "ecosystem.config.js"]
