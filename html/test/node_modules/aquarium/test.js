const aquarium = require("./index.js");

const control = aquarium({});

control.insert({ kind: 'red ball' }, 5,1 );
control.insert({ kind: 'green ball' }, 5,1 );

control.destroy({ kind: 'red ball' }, 1, 2);
control.destroy({ kind: 'green ball' }, 1, 2);

console.log( control.percent() );
console.log( control.weight(100));
