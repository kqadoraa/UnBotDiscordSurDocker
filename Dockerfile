# Construction du projet Discord.js.
FROM node:16-slim
WORKDIR /app
COPY ./botdiscord/package*.json ./
# Téléchargement des dépendances et update de NPM et vidage du cache.
RUN npm i \
-g npm \
discord.js && npm cache clean --force
COPY ./botdiscord ./
# Démarrage du bot Discord.
CMD ["node", "bot.js"]