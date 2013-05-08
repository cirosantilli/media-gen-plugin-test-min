a media-gen-plugin as defined in https://github.com/cirosantilli/latex-template/tree/1.1/media-gen#media-gen-plugin

automates the creation of python matplotlib plots for usage in book projects (latex, html, etc) projects

you can use it with the template present in https://github.com/cirosantilli/latex-template/

# install

to see how this works, you can start with the template:

    git clone --recursive https://github.com/cirosantilli/latex-template/
    cd latex-template

next you can install as:

    cd media-gen
    ./install.sh "cirosantilli/media-gen-plugin-matplotlib"

finnally try it out:

    cd ..
    make

you should see how this generated the following plot:

    media-gen/out/sample.png

which corresponds to the file:

    media-gen/matplotlib/in/sample.py

# usage

after installing, an `./in/` dir will be created in the plugin dir

the simplest way to do the plots is to put `.py` files there that will do the plotting.

those `.py` files must contain an interface as specified in `shared.py`.

the `makefile` expects to make one ouptut file for each `.py` in that dir
in this way, `make` will only remake a plot if the source was modified.

if you need more complex relationships between output and input ( ex: 1 file generates 2 figures )
you may want to create a custom makefile
