#!/bin/bash
echo The number of parameter is $#
echo The last parameter is $(basename ${!#})
exit
