#raster {
  raster-opacity: 1;
}

#ne_10m_admin_0_countries {
  line-color: purple;
  line-width: 1;
  line-join: round;
}

#ne_10m_coastline {
  line-color:#3e8cc4;
  line-join: round;
  line-width: 2;
}

#ne_10m_admin_0_countries [labelrank<=2] {
  text-name: "[name]";
  text-face-name: 'DejaVu Sans Book';
  text-transform: uppercase;
  text-size: 80;
}

#ne_10m_admin_0_countries [labelrank>=3][labelrank<=4] {
  text-name: "[name]";
  text-face-name: 'DejaVu Sans Book';
  text-transform: uppercase;
  text-size: 64;
}

#ne_10m_admin_0_countries [labelrank>=5][labelrank<=6] {
  text-name: "[name]";
  text-face-name: 'DejaVu Sans Book';
  text-transform: uppercase;
  text-size: 48;
}

#ne_10m_populated_places [ADM0CAP=1] {
  shield-name: "[NAME]";
  shield-file: url('circle.svg');
  shield-face-name: 'DejaVu Sans Book';
  shield-text-transform: uppercase;
  shield-size: 30;
  shield-unlock-image: true; 
  shield-text-dx: 30;
  shield-allow-overlap: true;
}

#ne_10m_geography_marine_polys [featurecla="ocean"] {
  line-color:#fff;
  line-width: 5; 
  line-opacity: 0.2;
  text-name: "[name]";
  text-face-name: 'DejaVu Sans Book';
  text-size: 150;
  text-transform: uppercase;
  text-wrap-width: 1;
  text-fill: #fff;
  text-opacity: 0.7;
}

#ne_10m_geography_marine_polys [featurecla="sea"][scalerank=1] {
  line-color:#fff;
  line-width: 1; 
  line-opacity: 0.2;
  text-name: "[name]";
  text-face-name: 'DejaVu Sans Book';
  text-size: 50;
  text-transform: uppercase;
  text-wrap-width: 1;
  text-fill: #fff;
  text-opacity: 0.7;
}
