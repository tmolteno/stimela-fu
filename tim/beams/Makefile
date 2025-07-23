#
#	Download an install the MeerKAT beams. This is a 33GB download,
#	so do it only once.
#
#	Part of the White-Belt imaging recipe by Tim
#
NPIX=256
NCHAN=95
DELTA_NU=$(shell echo "(1711-856)/${NCHAN}" | bc -l)
DIAMETER=10 # $(shell echo ${NPIX}*${RES_ARCSEC}/3600 | bc -l)
PREFIX=meerkat_pb_jones_cube_${NPIX}_${NCHAN}channels
NCPU=2


model:
	eidos --ncpu ${NCPU} -o8 \
		-f 856 1711 ${DELTA_NU} \
		-p ${NPIX} --diameter ${DIAMETER} \
		--prefix ${PREFIX}

install:
	pip install git+https://github.com/tmolteno/eidos@improve-multiprocessing

