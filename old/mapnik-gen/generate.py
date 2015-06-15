#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys, math

try:
    import mapnik
except:
    print '\n\nThe mapnik library and python bindings must have been compiled and \
installed successfully before running this script.\n\n'
    sys.exit(1)

try:
    import cairo
    HAS_PYCAIRO_MODULE = True
except ImportError:
    HAS_PYCAIRO_MODULE = False

# Instanciate a map, giving it a width and height. Remember: the word "map" is
# reserved in Python! :)

scale_factor = 1

#m = mapnik.Map(21426, 11141,"+proj=natearth")
m = mapnik.Map(2143 * scale_factor, 1115 * scale_factor,"+proj=natearth")

mapnik.load_map(m, "output_map.xml")

# Draw map
m.zoom_all()

# Render map
im = mapnik.Image(m.width,m.height)
#mapnik.render(m, im, scale_factor)
mapnik.render(m, im)

print 'envelope: ' + str(m.envelope())

# Save image to files
images_ = []
im.save('output_demo.png', 'png') # true-colour RGBA
images_.append('output_demo.png')


#
# old behavior, now can do 'png8:c=256'
#im.save('demo256.png', 'png256') # save to palette based (max 256 colours) png
#images_.append('demo256.png')
#
#im.save('demo64_binary_transparency.png', 'png8:c=64:t=1')
#images_.append('demo64_binary_transparency.png')
#
#im.save('demo128_colors_hextree_no_alpha.png', 'png8:c=100:m=h:t=0')
#images_.append('demo128_colors_hextree_no_alpha.png')
#
#im.save('demo_high.jpg', 'jpeg100')
#images_.append('demo_high.jpg')
#
#im.save('demo_low.jpg', 'jpeg50')
#images_.append('demo_low.jpg')
#
#im.save('demo.tif', 'tiff')
#images_.append('demo.tif')
#
## Render cairo examples
if HAS_PYCAIRO_MODULE and mapnik.has_pycairo():
 
     svg_surface = cairo.SVGSurface('demo.svg', m.width,m.height)
     mapnik.render(m, svg_surface)
     svg_surface.finish()
     images_.append('demo.svg')
 
#    pdf_surface = cairo.PDFSurface('demo.pdf', m.width,m.height)
#    mapnik.render(m, pdf_surface)
#    images_.append('demo.pdf')
#    pdf_surface.finish()
#
#    postscript_surface = cairo.PSSurface('demo.ps', m.width,m.height)
#    mapnik.render(m, postscript_surface)
#    images_.append('demo.ps')
#    postscript_surface.finish()
#
#    image_surface = cairo.ImageSurface(cairo.FORMAT_RGB24, m.width, m.height)
#    mapnik.render(m, image_surface)
#    image_surface.write_to_png('demo_cairo_rgb24.png')
#    images_.append('demo_cairo_argb24.png')
#    image_surface.finish()
#
#    image_surface = cairo.ImageSurface(cairo.FORMAT_ARGB32, m.width, m.height)
#    mapnik.render(m, image_surface)
#    image_surface.write_to_png('demo_cairo_argb32.png')
#    images_.append('demo_cairo_argb32.png')
#    image_surface.finish()
#
else:
     print '\n\nPycairo not available...',
     if  mapnik.has_cairo():
         print ' will render Cairo formats using alternative method'

#        mapnik.render_to_file(m,'demo.pdf')
#        images_.append('demo.pdf')
#        mapnik.render_to_file(m,'demo.ps')
#        images_.append('demo.ps')
         mapnik.render_to_file(m,'demo.svg')
         images_.append('demo.svg')
#        mapnik.render_to_file(m,'demo_cairo_rgb24.png','RGB24')
#        images_.append('demo_cairo_rgb.png')
#        mapnik.render_to_file(m,'demo_cairo_argb32.png','ARGB32')
#        images_.append('demo_cairo_argb.png')
#
print "\n\n", len(images_), "maps have been rendered in the current directory:"
#
#for im_ in images_:
#    print "-", im_
#
#print "\n\nHave a look!\n\n"
#
# mapnik.save_map(m,"output/map.xml")
