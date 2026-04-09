#!/bin/bash
 
echo "Enter tree destination (notes, people, ...):"
read destination
forester new forest.toml --dest=trees/${destination}/