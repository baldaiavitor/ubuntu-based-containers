var os = require('os');

console.log('Hello World', `from node ${process.version}`);
console.log(os.type()); 
console.log(os.release()); 
console.log(os.platform());