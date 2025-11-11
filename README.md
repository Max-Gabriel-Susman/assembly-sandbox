# Assembly Sandbox

This repository contains some of my exploration of assembly. I had a college course where I had the opportunity to write and execute some assembly in an online editor and It left me wanting to experience writing and working with some assembly on my own laptops processor locally as well. 

## Prerequisites

I was running this on ubuntu 24 with a gcc installation I got from apt like: 
```
sudo apt install gcc
```

## Usage

We assemble our initial source file like:
```
as asem.s -o asem.o
```

We then run gcc(alternatively we could use the dedicated linker) against the intermediate object file to generate an executable: 
```
gcc -o asem asem.o -nostdlib -static
```

Now we can execute our resulting binary: 
```
./asem
```