#!/bin/sh
# raster file imported to the Location folder 'Kamchatka'
r.in.gdal -o input=/Users/pauline/ETOPO1_KKT_WGS84.tif output=ETOPO1_KKT_WGS84.tif
# checked up the list of the raster files in the working directory
g.list rast
#starting graphical display (or 'monitor') in which the maps were displayed
d.mon wx0
# visualizing raster by d.rast utility which displays grid cell maps in the current graphics region
d.rast ETOPO1_Bed_g_geotiff
#  changing color palette, from default viridis to srtm_plus
r.colors ETOPO1_KKT_WGS84 col=srtm_plus
# check of the range of the elevation values (depths/heights) of the map
r.info ETOPO1_KKT_WGS84
# display a legend on a map
d.rast.leg map= ETOPO1_KKT_WGS84
# providing simple numerical output of category numbers or range of values in a raster
r.describe ETOPO1_KKT_WGS84
#  print a list of category numbers and associated labels
r.cats
# check up and print the current region extent (in this case: NS: 20.000000; EW: 45.000000).
g.region -e
# Removing auxiliary files
g.remove type=raster name=ETOPO1_KKT_WGS84.tiff -f
