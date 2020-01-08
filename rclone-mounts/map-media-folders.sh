#!/bin/bash

mhddfs /mnt/ovh/blob-pub/movies,/mnt/local/movies /aws/movies -o allow_other
mhddfs /mnt/ovh/blob-pub/tv,/mnt/local/tv /aws/tv -o allow_other

