mkdir data

tools\wget\wget.exe --no-clobber --output-document=data/10m_cultural.zip http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/10m_cultural.zip
tools\wget\wget.exe --no-clobber --output-document=data/10m_physical.zip http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/physical/10m_physical.zip
tools\wget\wget.exe --no-clobber --output-document=data/NE2_HR_LC_SR_W_DR.zip http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/raster/NE2_HR_LC_SR_W.zip

tools\unzip\unzip.exe -n data\10m_cultural.zip -d data\cultural
tools\unzip\unzip.exe -n data\10m_physical.zip -d data\physical
tools\unzip\unzip.exe -n data\NE2_HR_LC_SR_W_DR.zip -d data\raster
