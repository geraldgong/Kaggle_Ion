#!/bin/sh
filename="$1"    # input filename
kaggle competitions submit -c liverpool-ion-switching -f "${filename}" -m "`date +'%Y-%m-%d %H:%M:%S'`"