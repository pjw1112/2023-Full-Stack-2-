# aquarium
Inspired by MUD/MOO, a simple Library aimed at performing
probability driven experiments in an enclosed virtual space by means
of virtual objects and user defined uncertainty.

    # install
    npm i -S aquarium;

    // Load
    const aquarium = require("aquarium");

    // Initialize (returns control device)
    const control = aquarium();

    // insert 5 red objects and 5 green objects
    control.insert({ kind: 'red ball' }, 5);
    control.insert({ kind: 'green ball' }, 5);

    // destroy 1 red object with probability of 1 in 2
    control.destroy({ kind: 'red ball' }, 1, 2);

    // destroy 1 green object with probability of 1 in 6 (dice)
    control.destroy({ kind: 'green ball' }, 1, 6);

    // render data with .percent (you can give your objects a .value)
    console.log( control.percent() );
    [ { kind: 'red ball', percent: 10 },
      { kind: 'red ball', percent: 10 },
      { kind: 'red ball', percent: 10 },
      { kind: 'red ball', percent: 10 },
      { kind: 'red ball', percent: 10 },
      { kind: 'green ball', percent: 10 },
      { kind: 'green ball', percent: 10 },
      { kind: 'green ball', percent: 10 },
      { kind: 'green ball', percent: 10 },
      { kind: 'green ball', percent: 10 } ]

    // render data with .weight given that the aquarium weights 0
    // and total weight of aquarium and objects is 100 [ex. lb];
    console.log( control.weight(100));
    [ { kind: 'red ball', weight: 10 },
      { kind: 'red ball', weight: 10 },
      { kind: 'red ball', weight: 10 },
      { kind: 'red ball', weight: 10 },
      { kind: 'red ball', weight: 10 },
      { kind: 'green ball', weight: 10 },
      { kind: 'green ball', weight: 10 },
      { kind: 'green ball', weight: 10 },
      { kind: 'green ball', weight: 10 },
      { kind: 'green ball', weight: 10 } ]
