The Katacoda `terminal` layout provides a full Terminal experience with IDE Functionality
## IDE Functionality

With the IDE, you can open files certain files from Markdown - `newFile.js`{{open}}

You can copy, extend or replace text from UI helpers.

<pre class="file" data-filename="app.js" data-target="replace">var http = require('http');
var requestListener = function (req, res) {
  res.writeHead(200);
  res.end('Hello, World!');
}

var server = http.createServer(requestListener);
server.listen(80, function() { console.log("Listening on port 80")});
</pre>

The following snippet will prepend the contents of the editor:

<pre class="file" data-filename="app.js" data-target="prepend">console.log("Starting...")
</pre>

The following snippet will append the contents of the editor:

<pre class="file" data-filename="app.js" data-target="append">console.log("Finishing...")
</pre>

The editor can copy to particular files based on the data-filename attribute:

<pre class="file" data-filename="index.js" data-target="replace">console.log("Index.js here...")
</pre>

To start the web server run:

```
cd example
```{{execute}}

```
node app.js
```{{execute}}

## Generated Web Link to access the site

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com

## Markdown 
<pre>https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com</pre>
