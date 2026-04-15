#!/bin/bash
 
echo "Enter tree destination (notes, people, overviews, ...):"
read destination
forester new forest.toml --dest=trees/${destination}/