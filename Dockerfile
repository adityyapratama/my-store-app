# Gunakan versi 20 agar kompatibel dengan Next.js terbaru
FROM node:20-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Tambahkan konfigurasi network jika perlu, dan install
RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000
CMD ["npm", "start"]