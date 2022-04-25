#!/bin/sh
g.region rast=ETOPO1_KKT_WGS84.tif -p
d.mon wx0
d.rast ETOPO1_KKT_WGS84
r.colors ETOPO1_KKT_WGS84 col=srtm_plus
d.legend raster=ETOPO1_KKT_WGS84 title=Elevation,m title_fontsize=12 \
    font=Helvetica fontsize=8 -t -b bgcolor=white label_step=2000 border_color=gray -f thin=10
d.northarrow style=fancy_compass rotation=0 label=N -w color=black fill_color=gray fontsize=10
d.grid size=02:00:00 -a -d color=red width=0.1 fontsize=8 text_color=white
d.text text="Region of Kuril-Kamchatka Trench" color=yellow bgcolor=gray size=8
