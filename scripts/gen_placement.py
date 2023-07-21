#!python3 

import sys

ARR_X_LEN = 8
ARR_Y_LEN = 8

X_PITCH = 85
Y_PITCH = 85
X_INIT  = 40
Y_INIT  = 40

if(len(sys.argv) >= 3):
    ARR_X_LEN = int(sys.argv[1])
    ARR_Y_LEN = int(sys.argv[2])
if(len(sys.argv) >= 5):
    X_PITCH = int(sys.argv[3])
    Y_PITCH = int(sys.argv[4])
if(len(sys.argv) == 7):
    X_INIT = int(sys.argv[5])
    Y_INIT = int(sys.argv[6])

for y in range(ARR_Y_LEN):
    for x in range(ARR_X_LEN):
        print(f"arr_cell_x{x}_y{y} {X_INIT + x * X_PITCH} {Y_INIT + y * Y_PITCH} N")
