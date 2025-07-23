ORIGINAL_MS=foo
OUT_DIR='out_${ORIGINAL_MS}'

MASTER_MS=ms-orig/${ORIGINAL_MS}.ms
MS=ms-orig/${ORIGINAL_MS}_ave.ms
BPCAL='J0408-6545'
PHASECAL=['J0155-4048']
TARGETS=['J0159.0-3413']

TARGET_PCAL_MAP=
SCANS=

STIMELA_FLAGS=
STIMELA_CMD=stimela ${STIMELA_FLAGS} run

PARAMS=ms=${MS} outname=${OUT_DIR} bpcal=${BPCAL} phasecal-list=${PHASECAL} target-list=${TARGETS}

STEP= # '--step listobs'
XTRAS=
.PHONY: flagging 1gc target-flag 2gc

# 41 minutes
flagging:
	${STIMELA_CMD} white-belt-0-flagging.yml ${XTRAS} initial-flagging ${STEP} master_ms=${MASTER_MS} ${SCANS} ${PARAMS}

# 90 minutes
1gc:
	${STIMELA_CMD} white-belt-1-1GC.yml ${XTRAS} calibration-1gc ${STEP} target-pcal-map=${TARGET_PCAL_MAP} ${PARAMS}

# 17 minutes
target-flag:
	${STIMELA_CMD} white-belt-2-target-flag.yml ${XTRAS} target-flagging ${STEP} ${PARAMS}

2gc:
	${STIMELA_CMD} white-belt-3-2GC.yml ${XTRAS} target-2gc ${STEP} ${PARAMS}

3gc:
	${STIMELA_CMD} white-belt-4-ddfacet.yml ${XTRAS} target-3gc ${STEP} ${PARAMS} facet_centres=target_0_facets.ds9

all:	cleanup refresh flagging 1gc target-flag 2gc 3gc
	echo "Done"

view:
	docker run -ti -p 3002:3002 -v ${PWD}:/images -v ${HOME}/.carta:/home/cartauser/.carta cartavis/carta:latest

install:
	pip install git+https://github.com/caracal-pipeline/cult-cargo

refresh:
	rm -rf ${MS}*

rebuild:
	rm -rf ${MASTER_MS}* ${MS}*
	cp -a /home/tim/astro/merghers/${ORIGINAL_MS}.ms ${MASTER_MS}

cleanup:
	- rm -rf multi.*
	- rm -rf tmp
	- rm -f *.log
	- rm -rf logs
	- rm -f *.last
	- rm -rf ${OUT_DIR}-cal*
	- rm -rf ${OUT_DIR}*
