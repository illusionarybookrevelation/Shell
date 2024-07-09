#!/bin/bash
name=test
export name=test
unset name
echo $PATH
PATH="$PATH":/root
echo $PATH