#!/bin/bash
if (which rpm &> /dev/null)
then
	iten_rpm=1
	echo "You have the basic rpm utility."
else
	item_rpm=0
fi

if (which flatpak &> /dev/null)
then
	item_flatpak=1
	echo "You have the flatpak application container."
else
	item_flatpak=0
fi

if (which dnf &> /dev/null)
then
	item_dnfyum=1
	echo "You have the dnf package manager."
elif (which yum &> /dev/null)
then
	item_dnfyum=1
	echo "You have the yum package manager."
else
	item_dnfyum=0
fi

redhatscore=$[$item_rpm + $item_dnfyum + $item_flatpak]
echo $redhatscore
