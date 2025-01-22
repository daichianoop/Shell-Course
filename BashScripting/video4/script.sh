#!/bin/bash

# You can evaluate expressions on the CLI by using expr operation
# * is a special symbol and means everything, so in multiplication
# you need to write it as 400 \* 10 ----- using an escape sequence.

a=100
b=12
c=$((a+b))
echo "$c"
