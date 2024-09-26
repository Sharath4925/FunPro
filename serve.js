const fileUpload=require('express-fileupload');
const express=require('express');
const app=new express();
const http = require('http');
const HTTP_PORT = process.env.HTTP_PORT || 3001;
const { exec } = require('child_process');
const fs = require('fs');
const url = require('url');
const bodyParser = require('body-parser');
const util=require('util');
app.use(bodyParser.json());
app.use(fileUpload());
app.use(express.urlencoded());
app.post('/encrypt',(req,res)=>{



var file = req.files.encrypt;
var fileName = '/home/wolfrh9/Desktop/crypt/uploads/'+file.name;
file.mv(fileName,(err) => {
if(err){
concole.log(err);
}
else{
console.log('Uploaded');
var pass="help";

exec(`node aes.js encrypt ${fileName} ${pass}`,(err)=>{

if(err){
console.log(err);
}else{
console.log('Encrypted');
}

fs.unlinkSync(fileName);
console.log('unlink');


     console.log(fileName + ' deleted');
     var encFile = fileName + '.enc';

    var URL=url.format({pathname: '/downloads',query: {"filepath":`${encFile}`}});
var decryptURL=url.format({pathname: '/decrypt',query: {"filepath":`${encFile}`,"pass":`${pass}`}});

res.send(`<h1>Encrypted file will download shortly </h1><br/><a href='${URL}' download>Download</a><br/>

<a href='${decryptURL}' >Decrypt this file</a><br/>`);
});
  }
});
 
});

app.get('/downloads',(req,res)=>{

res.download(req.query.filepath);

});


app.all('/decrypt',(req,res)=>{
if(req.files === undefined){
var fileName=req.query.filepath;
var pass=req.query.pass;
}else{




var pass=req.body.pass;
var file = req.files.decrypt;
var fileName = '/home/wolfrh9/Desktop/crypt/uploads/' + file.name;
file.mv(fileName,(err)=>{
if(err){
console.log(err);
}
}); 

}

exec(`node aes.js decrypt ${fileName} ${pass} `,(err)=>{
var URL=url.format({pathname:'/downloads',query:{"filepath":`${fileName}.unenc`}});
res.send(`<h1>Decrypted file will download shortly</h1><br/><a href='${URL}' download>Download</a>`);

});

});


app.get('/',(req,res)=>{

res.sendFile('/home/wolfrh9/Desktop/crypt/index.html');

});

app.listen(HTTP_PORT,()=>console.log(`Listening to port ${HTTP_PORT}`));
