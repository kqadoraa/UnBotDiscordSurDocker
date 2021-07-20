// Copyright | Maël Magnien (2020-2021).
const Discord = require('discord.js');
const client = new Discord.Client();
const config = require('./config/config.json');
// Message de connexion.
client.on('ready', () => {
    console.log(`Connected !`);
});
// Réponse et test pour savoir si notre image Docker fonctionne.
client.on("message", (message) => {
    if(message.content === "docker") {
        message.channel.send("Salut, ton image Docker marche !")
    }
});
// Notre Token.
client.login(config.token);