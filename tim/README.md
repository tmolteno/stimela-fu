# Tim Molteno White-Belt Imaging

Based on a mixture of oxcat (Ian Heywood) and some more modern tools like Quartical. This is a reasonably automated stimela2 pipeline. It includes some cab definitions yet to go into cult-cargo.

## What's in here

The script consists of five steps.

* basic flagging. white-belt-0-flagging.yml
* 1GC. white-belt-1-1GC.yml
* Target flagging: white-belt-2-target-flag.yml
* 2GC: white-belt-3-2GC.yml
* 3GC Using DDFacet and KillMS. white-belt-4-3GC.yml

These can be run using the supplied Makefile

There are also some configuration files:

* white-belt-config.yml
* white-belt-setup.yml

### Beams

In the folder called beams is a script for building beams. This needs to be done only once on the imaging machine.
