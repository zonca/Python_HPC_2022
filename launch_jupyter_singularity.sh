export PATH="/cm/shared/apps/sdsc/galyleo:${PATH}"
SIMG='/expanse/lustre/projects/sds166/zonca/dask-numba-si22.sif'
# Summer institute account
ACCOUNT=crl155
ACCOUNT=sds166
# Use current folder
NOTEBOOK_FOLDER=$(pwd -P)
# Use the user home
# NOTEBOOK_FOLDER=${HOME}
#RESERVATION=SI2021RES
galyleo.sh launch --account $ACCOUNT --partition 'debug' --memory '200' --cpus-per-task 128 --time-limit 00:30:00 --jupyter 'lab' --notebook-dir "${NOTEBOOK_FOLDER}" --env-modules 'singularitypro' --bind '/expanse,/scratch' --sif "${SIMG}"
#galyleo.sh launch --account $ACCOUNT --reservation ${RESERVATION} --partition 'compute' --cpus-per-task 128 --time-limit 02:45:00 --jupyter 'lab' --notebook-dir "${NOTEBOOK_FOLDER}" --env-modules 'singularitypro' --bind '/expanse,/scratch' --sif "${SIMG}"
