#!/bin/bash

gcc -c *c
ar rcs liball.a *.o
rm *.o
ar -t liball.a