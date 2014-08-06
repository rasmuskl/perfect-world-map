Map {
  background-color: #b8dee6;
}

#ne1hrlcsrwdr {
  raster-opacity:1;
}

#countries {
    line-color: purple;
    line-width: 1;
    line-join: round;
  	//line-dasharray: 1, 2;
	[zoom=5] { line-width: 0.5; }     [zoom=0] { line-width: 0.015625; } [zoom=1] { line-width: 0.03125; } [zoom=2] { line-width: 0.0625; } [zoom=3] { line-width: 0.125; } [zoom=4] { line-width: 0.25; } [zoom=5] { line-width: 0.5; } [zoom=6] { line-width: 1; } [zoom=7] { line-width: 2; } [zoom=8] { line-width: 4; } [zoom=9] { line-width: 8; } [zoom=10] { line-width: 16; } [zoom=11] { line-width: 32; } [zoom=12] { line-width: 64; } [zoom=13] { line-width: 128; } [zoom=14] { line-width: 256; } [zoom=15] { line-width: 512; } [zoom=16] { line-width: 1024; } [zoom=17] { line-width: 2048; } [zoom=18] { line-width: 4096; } [zoom=19] { line-width: 8192; } 
}

#coastline {
  	line-color:#3e8cc4;
  	line-join: round;
	[zoom=5] { line-width: 0.5; }     [zoom=0] { line-width: 0.015625; } [zoom=1] { line-width: 0.03125; } [zoom=2] { line-width: 0.0625; } [zoom=3] { line-width: 0.125; } [zoom=4] { line-width: 0.25; } [zoom=5] { line-width: 0.5; } [zoom=6] { line-width: 1; } [zoom=7] { line-width: 2; } [zoom=8] { line-width: 4; } [zoom=9] { line-width: 8; } [zoom=10] { line-width: 16; } [zoom=11] { line-width: 32; } [zoom=12] { line-width: 64; } [zoom=13] { line-width: 128; } [zoom=14] { line-width: 256; } [zoom=15] { line-width: 512; } [zoom=16] { line-width: 1024; } [zoom=17] { line-width: 2048; } [zoom=18] { line-width: 4096; } [zoom=19] { line-width: 8192; } 
}

#countries [labelrank<=2] {
  text-name: "[name]";
  text-face-name: 'Arial Bold';
  text-transform: uppercase;
  
  [zoom=0] { text-size: 0.625; }
  [zoom=1] { text-size: 1.25; }
  [zoom=2] { text-size: 2.5; }
  [zoom=3] { text-size: 5; }
  [zoom=4] { text-size: 10; }
  [zoom=5] { text-size: 20; }
  [zoom=6] { text-size: 40; }
  [zoom=7] { text-size: 80; }
  [zoom=8] { text-size: 160; }
  [zoom=9] { text-size: 320; }
  [zoom=10] { text-size: 640; }
  [zoom=11] { text-size: 1280; }
  [zoom=12] { text-size: 2560; }
  [zoom=13] { text-size: 5120; }
  [zoom=14] { text-size: 10240; }
  [zoom=15] { text-size: 20480; }
  [zoom=16] { text-size: 40960; }
  [zoom=17] { text-size: 81920; }
  [zoom=18] { text-size: 163840; }
  [zoom=19] { text-size: 327680; }
}

#countries [labelrank>=3][labelrank<=4] {
  text-name: "[name]";
  text-face-name: 'Arial Bold';
  text-transform: uppercase;
  
  [zoom=0] { text-size: 0.5; }
  [zoom=1] { text-size: 1; }
  [zoom=2] { text-size: 2; }
  [zoom=3] { text-size: 4; }
  [zoom=4] { text-size: 8; }
  [zoom=5] { text-size: 16; }
  [zoom=6] { text-size: 32; }
  [zoom=7] { text-size: 64; }
  [zoom=8] { text-size: 128; }
  [zoom=9] { text-size: 256; }
  [zoom=10] { text-size: 512; }
  [zoom=11] { text-size: 1024; }
  [zoom=12] { text-size: 2048; }
  [zoom=13] { text-size: 4096; }
  [zoom=14] { text-size: 8192; }
  [zoom=15] { text-size: 16384; }
  [zoom=16] { text-size: 32768; }
  [zoom=17] { text-size: 65536; }
  [zoom=18] { text-size: 131072; }
  [zoom=19] { text-size: 262144; }
}

#countries [labelrank>=5][labelrank<=6] {
  text-name: "[name]";
  text-face-name: 'Arial Bold';
  text-transform: uppercase;
  
  [zoom=0] { text-size: 0.375; }
  [zoom=1] { text-size: 0.75; }
  [zoom=2] { text-size: 1.5; }
  [zoom=3] { text-size: 3; }
  [zoom=4] { text-size: 6; }
  [zoom=5] { text-size: 12; }
  [zoom=6] { text-size: 24; }
  [zoom=7] { text-size: 48; }
  [zoom=8] { text-size: 96; }
  [zoom=9] { text-size: 192; }
  [zoom=10] { text-size: 384; }
  [zoom=11] { text-size: 768; }
  [zoom=12] { text-size: 1536; }
  [zoom=13] { text-size: 3072; }
  [zoom=14] { text-size: 6144; }
  [zoom=15] { text-size: 12288; }
  [zoom=16] { text-size: 24576; }
  [zoom=17] { text-size: 49152; }
  [zoom=18] { text-size: 98304; }
  [zoom=19] { text-size: 196608; }
}

#populated_places [adm0cap=1] {
  ::marker {
    [zoom=0] { marker-width: 0.15625; }
    [zoom=1] { marker-width: 0.3125; }
    [zoom=2] { marker-width: 0.625; }
    [zoom=3] { marker-width: 1.25; }
    [zoom=4] { marker-width: 2.5; }
    [zoom=5] { marker-width: 5; }
    [zoom=6] { marker-width: 10; }
    [zoom=7] { marker-width: 20; }
    [zoom=8] { marker-width: 40; }
    [zoom=9] { marker-width: 80; }
    [zoom=10] { marker-width: 160; }
    [zoom=11] { marker-width: 320; }
    [zoom=12] { marker-width: 640; }
    [zoom=13] { marker-width: 1280; }
    [zoom=14] { marker-width: 2560; }
    [zoom=15] { marker-width: 5120; }
    [zoom=16] { marker-width: 10240; }
    [zoom=17] { marker-width: 20480; }
    [zoom=18] { marker-width: 40960; }
    [zoom=19] { marker-width: 81920; }
    marker-fill:#f45;
    marker-line-color:#813;
    marker-allow-overlap:true;
  }
  
  text-name: "[name]";
  text-face-name: 'Arial Bold';
  text-transform: uppercase;
  text-size: 10;


[zoom=0] { text-size: 0.1875; }
[zoom=1] { text-size: 0.375; }
[zoom=2] { text-size: 0.75; }
[zoom=3] { text-size: 1.5; }
[zoom=4] { text-size: 3; }
[zoom=5] { text-size: 6; }
[zoom=6] { text-size: 12; }
[zoom=7] { text-size: 24; }
[zoom=8] { text-size: 48; }
[zoom=9] { text-size: 96; }
[zoom=10] { text-size: 192; }
[zoom=11] { text-size: 384; }
[zoom=12] { text-size: 768; }
[zoom=13] { text-size: 1536; }
[zoom=14] { text-size: 3072; }
[zoom=15] { text-size: 6144; }
[zoom=16] { text-size: 12288; }
[zoom=17] { text-size: 24576; }
[zoom=18] { text-size: 49152; }
[zoom=19] { text-size: 98304; }  
  
}

#geographymarinepolys [featurecla="ocean"] {
  line-color:#fff;

[zoom=0] { line-width: 0.03125; }
[zoom=1] { line-width: 0.0625; }
[zoom=2] { line-width: 0.125; }
[zoom=3] { line-width: 0.25; }
[zoom=4] { line-width: 0.5; }
[zoom=5] { line-width: 1; }
[zoom=6] { line-width: 2; }
[zoom=7] { line-width: 4; }
[zoom=8] { line-width: 8; }
[zoom=9] { line-width: 16; }
[zoom=10] { line-width: 32; }
[zoom=11] { line-width: 64; }
[zoom=12] { line-width: 128; }
[zoom=13] { line-width: 256; }
[zoom=14] { line-width: 512; }
[zoom=15] { line-width: 1024; }
[zoom=16] { line-width: 2048; }
[zoom=17] { line-width: 4096; }
[zoom=18] { line-width: 8192; }
[zoom=19] { line-width: 16384; }
  
  line-opacity: 0.2;
  
  text-name: "[name]";
  text-face-name: 'Arial Bold Italic';
  text-transform: uppercase;
  text-wrap-width: 1;
  text-fill: #fff;
  text-opacity: 0.7;
  
[zoom=0] { text-size: 1.5625; }
[zoom=1] { text-size: 3.125; }
[zoom=2] { text-size: 6.25; }
[zoom=3] { text-size: 12.5; }
[zoom=4] { text-size: 25; }
[zoom=5] { text-size: 50; }
[zoom=6] { text-size: 100; }
[zoom=7] { text-size: 200; }
[zoom=8] { text-size: 400; }
[zoom=9] { text-size: 800; }
[zoom=10] { text-size: 1600; }
[zoom=11] { text-size: 3200; }
[zoom=12] { text-size: 6400; }
[zoom=13] { text-size: 12800; }
[zoom=14] { text-size: 25600; }
[zoom=15] { text-size: 51200; }
[zoom=16] { text-size: 102400; }
[zoom=17] { text-size: 204800; }
[zoom=18] { text-size: 409600; }
[zoom=19] { text-size: 819200; }  
}

#geographymarinepolys [featurecla="sea"][scalerank=1] {
  line-color:#fff;

[zoom=0] { line-width: 0.03125; }
[zoom=1] { line-width: 0.0625; }
[zoom=2] { line-width: 0.125; }
[zoom=3] { line-width: 0.25; }
[zoom=4] { line-width: 0.5; }
[zoom=5] { line-width: 1; }
[zoom=6] { line-width: 2; }
[zoom=7] { line-width: 4; }
[zoom=8] { line-width: 8; }
[zoom=9] { line-width: 16; }
[zoom=10] { line-width: 32; }
[zoom=11] { line-width: 64; }
[zoom=12] { line-width: 128; }
[zoom=13] { line-width: 256; }
[zoom=14] { line-width: 512; }
[zoom=15] { line-width: 1024; }
[zoom=16] { line-width: 2048; }
[zoom=17] { line-width: 4096; }
[zoom=18] { line-width: 8192; }
[zoom=19] { line-width: 16384; }
  
  line-opacity: 0.2;
  
  text-name: "[name]";
  text-face-name: 'Arial Bold Italic';
  text-fill: #fff;
  text-opacity: 0.7;
  
  [zoom=5] { text-size: 20; }     [zoom=0] { text-size: 0.625; } [zoom=1] { text-size: 1.25; } [zoom=2] { text-size: 2.5; } [zoom=3] { text-size: 5; } [zoom=4] { text-size: 10; } [zoom=5] { text-size: 20; } [zoom=6] { text-size: 40; } [zoom=7] { text-size: 80; } [zoom=8] { text-size: 160; } [zoom=9] { text-size: 320; } [zoom=10] { text-size: 640; } [zoom=11] { text-size: 1280; } [zoom=12] { text-size: 2560; } [zoom=13] { text-size: 5120; } [zoom=14] { text-size: 10240; } [zoom=15] { text-size: 20480; } [zoom=16] { text-size: 40960; } [zoom=17] { text-size: 81920; } [zoom=18] { text-size: 163840; } [zoom=19] { text-size: 327680; } 
}



#geographymarinepolys [gid=25] {
    text-name: "[name]";
  text-face-name: 'Arial Bold Italic';
text-orientation: 300;
  }



#ne2hrlcsrwdr {
  raster-opacity:1;
}
