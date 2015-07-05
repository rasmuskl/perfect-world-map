mkdir raw

tools\wget\wget.exe --no-clobber --output-document=raw/10m_cultural.zip http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/10m_cultural.zip
tools\wget\wget.exe --no-clobber --output-document=raw/10m_physical.zip http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/physical/10m_physical.zip
tools\wget\wget.exe --no-clobber --output-document=raw/NE2_HR_LC_SR_W_DR.zip http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/raster/NE2_HR_LC_SR_W.zip

tools\unzip\unzip.exe -n raw\10m_cultural.zip -d raw\cultural
tools\unzip\unzip.exe -n raw\10m_physical.zip -d raw\physical
tools\unzip\unzip.exe -n raw\NE2_HR_LC_SR_W_DR.zip -d raw\raster
