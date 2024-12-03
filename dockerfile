# Utiliser une image Node.js
FROM node:18

# Mettre le dossier de travail dans /app
WORKDIR /app

#Copier le package.jason et le package-lock.json
COPY package*.json ./

# Installer les dépendances 
RUN npm install

# Copier le reste des fichiers 
COPY . .

# Exposer le port 3000
EXPOSE 3000

# Démarrer l'application
CMD ["npm", "start"]

