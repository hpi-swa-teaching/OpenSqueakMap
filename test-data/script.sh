#!/bin/sh
for i in `seq 1 10`; do
	wget --post-data='(node(52.49,13.36,52.50,13.38);way(52.49,13.36,52.50,13.38);rel(52.49,13.36,52.50,13.38););out;' 'http://api.openstreetmap.fr/oapi/interpreter'
done
#'http://overpass-api.de/api/interpreter'

