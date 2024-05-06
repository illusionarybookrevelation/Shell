#!/bin/bash
testuser=SkyRainMom
if [ $testuser = SkyRainMom ]
then
	echo "The testuser variable contains: SkyRainMom"
else
	echo "The testuser variable contains: $testuser"
fi
