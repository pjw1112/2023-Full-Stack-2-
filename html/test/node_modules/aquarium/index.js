const find = require('lodash/find');
const shuffle = require('lodash/shuffle');
const rnd = function (min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min;
}
module.exports = function (options = {}) {
  // Aquarium
  const aquarium = []; // aquarium is empty at boot.
  // Aquarium Manager
  const manager = {
    insert: (device, repeat = 1, probability = 1) => {
      probability--;
      for (let index = 0; index < repeat; index++) {
        let object = Object.assign({}, device);
        object.__index = index;
        if (rnd(0, probability) === 0) aquarium.push(object);
      }
    },
    destroy: (parameters, repeat, probability = 1) => {
      probability--;
      for (let count = 0; count < repeat; count++) {
        if (rnd(0, probability) === 0) {
          let found = find(shuffle(aquarium), parameters);
          if (found) {
            aquarium.splice(aquarium.indexOf(found), 1);
          }
        }
      }
    },
    data: () => {
      let data = JSON.parse(JSON.stringify(aquarium))
      return data;
    },
    percent: () => {
      let data = JSON.parse(JSON.stringify(aquarium))
      data.map(i => {
        if (i.value === undefined) {
          i.value = 1;
        }
      })
      let total = data.map(i => i.value)
        .reduce((a, v) => a + v, 0);
      data.map(i => i.percent = (i.value / total) * 100);
      data.map(i => {
        delete i.__index;
        delete i.value;
      })
      return data;
    },
    weight: (weight) => {
      let data = JSON.parse(JSON.stringify(aquarium))
      data.map(i => {
        if (i.value === undefined) {
          i.value = 1;
        }
      })
      let total = data.map(i => i.value)
        .reduce((a, v) => a + v, 0);
      data.map(i => i.percent = (i.value / total) * 100)
      data.map(i => i.weight = weight * (i.percent / 100))
      data.map(i => {
        delete i.__index;
        delete i.value;
        delete i.percent;
      })
      return data;
    },
  };
  return manager;
}
