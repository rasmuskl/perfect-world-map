mkdir data

wget --no-clobber --output-document=data/10m_cultural.zip http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/10m_cultural.zip
wget --no-clobber --output-document=data/10m_physical.zip http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/physical/10m_physical.zip
wget --no-clobber --output-document=data/NE2_HR_LC_SR_W_DR.zip http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/raster/NE2_HR_LC_SR_W.zip

unzip -u -d data/cultural data/10m_cultural.zip
unzip -u -d data/physical data/10m_physical.zip
unzip -u -d data/raster data/NE2_HR_LC_SR_W_DR.zip

/Applications/Postgres.app/Contents/Versions/9.3/bin/shp2pgsql -s 4326 -I -W LATIN1 data/cultural/10m_cultural/ne_10m_admin_0_countries.shp ne_10m_admin_0_countries | /Applications/Postgres.app/Contents/Versions/9.3/bin/psql -d map
