function start() {

    console.log("Beginning of start function");

    var sequence = [ 'red', 'yellow', 'green', 'blue', 'red' ];

    var current = 0;

    var max = sequence.length;

    var repeater = setInterval(function() {

        console.log("Before setTimeout");

        setTimeout(function() {

            console.log("Top of setTimeout function");

            if ( current < max ) {

                console.log("I'm working on [" + sequence[current] + "]");
                current++;

            }
            else {

                clearInterval(repeater);
                console.log("We're done!");

            }

        }, 500); // pause for .5 second, then run the function

        console.log("After setTimeout");

    }, 3000);  // runs every 3 seconds

    console.log("End of start function");

}
