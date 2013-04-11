Plain Coffee Script Demo
========================

The Coffee Script compiler can be installed as follows:

    npm install -g coffee-script

At the time of writing I'm using Coffee Script 1.6.2. This has basic source map support, but it does not work with the `--join` option that concatenates source files together into a single output.

If we weren't generating a source map, this would work fine.