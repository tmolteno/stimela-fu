#!/bin/sh
ORIG_MS=mt0_b_j0159-2

# Field summary:
#     FIELD_ID   SOURCE_ID  NAME             PHASE_DIR        REF_DIR          DELAY_DIR
#     0          0          J0159.0-3413     0.5194 -0.5973   0.5194 -0.5973   0.5194 -0.5973
#     1          1          J0155-4048       0.5045 -0.7123   0.5045 -0.7123   0.5045 -0.7123
#     2          2          J0408-6545       1.0836 -1.1476   1.0836 -1.1476   1.0836 -1.1476

# make rebuild ORIGINAL_MS=${ORIG_MS}
WB_STEP=all
STEP=''
make ${WB_STEP} ORIGINAL_MS=${ORIG_MS} \
            BPCAL='J0408-6545' \
            PHASECAL=['J0155-4048'] \
            TARGETS=['J0159.0-3413'] \
            TARGET_PCAL_MAP=['J0155-4048'] \
            STEP=${STEP}

