const Discord = require('discord.js');
const mysql = require('mysql');
const secrets = require('./secrets.json')
const client = new Discord.Client();
var get_uid_query = "SELECT iduser,nr_keks FROM mydbs.keks WHERE disc_name=? AND disc_tag=?"
var get_keks = "SELECT nr_keks FROM mydbs.keks WHERE disc_name=? AND disc_tag=?"

var id_keks = process.argv[2];
var id_canal= process.argv[3];
var con;

function connectDb(){
con = mysql.createConnection({
  host: "35.228.55.226",
  user: secrets["db-user"],
  password: secrets["db-pass"],
  database:'mydbs',
  charset : 'utf8mb4',
});


con.connect(function(err) {
    if (err) throw err;
    console.log("Connected to db!");
});

con.on('error', (err)=> {
	console.log('db error', err);
	setTimeout(connectDb,1500);
});
}

connectDb();

client.on('ready', () => {
  console.log(`Logged in as ${client.user.tag}!`);
});

client.on('message', async (message)=>{
    if(message.content.startsWith("k!top") && message.channel.id==id_canal)
    {
        
        con.query("SELECT disc_name,nr_keks FROM mydbs.keks order by nr_keks desc limit 25",(err,res)=>{
            if(err)
                console.log(err)
            else
            {
                var embed = new Discord.MessageEmbed()
                    .setColor("#006600")
                    .setTitle("Top 25 legionari")
                for(var i = 0;i< res.length;i++)
                {
                    embed.addField((i+1)+": "+res[i].disc_name,res[i].nr_keks+` <:keks:${id_keks}>`)
                }
                message.channel.send(embed)
            }
        }) 
    }
    else if(message.content.startsWith("k!keks") && message.channel.id==id_canal)
    {   
        var info = []
        var user
        if(message.mentions.users.size>0)
        {
            user = message.mentions.users.first()
            info[0] = message.mentions.users.first().username
            info[1] = message.mentions.users.first().discriminator
        }
        else
        {
            user = message.author
            info = message.author.tag.split('#');
        }
        con.query(get_keks,info,(err,res)=>
        {
            if(err)
                console.log(err)
            else
                if(!res || res.length<=0)
                {
                    message.channel.send(`${user} nu are <:keks:${id_keks}>, crinj`)
                }
                else
                {
                    message.channel.send(`${user} are ${res[0].nr_keks} <:keks:${id_keks}>, bazat`)
                }
        })
    }
});

client.on('messageReactionAdd', async (reaction, user) => {
    if (reaction.emoji.id == id_keks)
    {
        if (reaction.partial) {
            try {
                await reaction.fetch();
            } catch (error) {
                console.log('Something went wrong when fetching the message: ', error);
                return;
            }
        }
    var info = reaction.message.author.tag.split('#');
    con.query(get_uid_query,info,(err,res)=>{
        if(err)
            console.log(err)
        else
            if(res.length>0)
            {
                con.query("UPDATE mydbs.keks SET nr_keks = nr_keks + 1 WHERE iduser = ?",[res[0].iduser],(err)=>{
                    if(err)
                        console.log(err)
                })
            }
            else
            {
                con.query("INSERT INTO mydbs.keks (disc_name,disc_tag,nr_keks) VALUES (?,?,?)",[info[0],info[1],1],(err)=>{
                    if(err)
                        console.log(err)
                })
            }
    })
    }
});


client.on('messageReactionRemove', async (reaction, user) => {
    if (reaction.emoji.id == id_keks)
    {
        if (reaction.partial) {
            try {
                await reaction.fetch();
            } catch (error) {
                console.log('Something went wrong when fetching the message: ', error);
                return;
            }
        }
    
    var info = reaction.message.author.tag.split('#');
    con.query(get_uid_query,info,(err,res)=>{
        if(err)
            console.log(err)
        else
            con.query("UPDATE mydbs.keks SET nr_keks = nr_keks - 1 WHERE iduser = ?",[res[0].iduser],(err)=>{
                if(err)
                    console.log(err)
            })
    })
    }
});

client.login(secrets.token);
