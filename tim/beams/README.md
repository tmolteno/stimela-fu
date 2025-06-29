## Create the beams file

Primary beam correction for meerkat requires beam files. This directory contains instructions for creating the beams.

Create a virtual environment with

    python3 -m venv venv
    source ./venv/bin/activate

Then install eidos

    make install

Then build the beams

    make all
