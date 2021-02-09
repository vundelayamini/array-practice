#!/bin/bash

counter=0
Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Orange"
Fruits[((counter++))]="Banana"

echo ${Fruits[@]}
