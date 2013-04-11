CommonJS Everywhere Demo
========================

CommonJS Everywhere is a Javascript build tool that constructs a graph of source files by following "require" statements and compiling everything into one big CommonJS-driven file.

https://npmjs.org/package/commonjs-everywhere

CommonJS supports Coffee Script via Coffee Script Redux - a work-in-progress rewrite of the Coffeescript compiler.

https://github.com/michaelficarra/CoffeeScriptRedux

Install CommonJS Everywhere as follows:

    npm install -g commonjs-everywhere

At the time of writing I'm working with v0.6.1. There are two problems:

 - The cjsify command writes the sourceMapURL comment into the target JS file relative to current working directory, rather than the directory containing the JS file. We work around this by running cjsify from the same directory as the target JS file.

 - Coffee Script Redux isn't yet up to speed with the latest Coffee Script. The demo code uses a super constructor call from Dog to Animal that doesn't compile in Redux. We could work around this by restructuring the app. YMMV.
