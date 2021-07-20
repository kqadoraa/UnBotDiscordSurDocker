# Construction du projet Discord.js.
FROM node:16-slim
WORKDIR /app
COPY package*.json ./
RUN npm install discord.js
COPY ./botdiscord .
# Démarrage du bot Discord.
CMD ["node", "bot.js"]