#!/bin/sh

rsync -rnxi --stats -e "ssh -l root" $1 $2

