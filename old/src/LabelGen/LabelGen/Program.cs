using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using DotSpatial.Data;
using DotSpatial.Projections;
using DotSpatial.Topology;

namespace LabelGen
{
    class Program
    {
        static void Main(string[] args)
        {
            var graticulesShapeFile = Shapefile.OpenFile(@"C:\dev\perfect-world-map\ne_10m_graticules_1 natearth.shp");

            //var shapefile = Shapefile.OpenFile(@"C:\dev\perfect-world-map\data\cultural\10m_cultural\ne_10m_admin_0_countries.shp");
            var countriesShapeFile = Shapefile.OpenFile(@"C:\dev\perfect-world-map\ne_10m_admin_0_countries natearth.shp");

            //var sourceProjection = KnownCoordinateSystems.Projected.World.Mercatorworld;
            //var targetProjection = KnownCoordinateSystems.Projected.World.Robinsonworld;
            //shapefile.Reproject(targetProjection);

            var rootElement = new XElement(XName.Get("svg"));

            var document = new XDocument(rootElement);

            rootElement.Add(RenderShapeFile(countriesShapeFile));
            rootElement.Add(RenderShapeFile(graticulesShapeFile));

            document.Save("map.svg");
        }

        static List<XElement> RenderShapeFile(Shapefile shapefile)
        {
            const string pathStyle = "fill:#eeeeee;fill-opacity:1;stroke:#000000;stroke-width:1;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none";
            const string polypathStyle = "fill:#ffffff;fill-opacity:0;stroke:#000000;stroke-width:1;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none";

            var elements = new List<XElement>();

            foreach (var feature in shapefile.Features)
            {
                if (feature.BasicGeometry is MultiPolygon)
                {
                    IBasicGeometry basicGeometry = feature.BasicGeometry;

                    var multiPolygon = basicGeometry as MultiPolygon;

                    foreach (var geometry in multiPolygon.Geometries)
                    {
                        var polygon = geometry as Polygon;
                        var polygonPath = GetPolygonPath(polygon);

                        elements.Add(new XElement(XName.Get("path"), new XAttribute(XName.Get("style"), pathStyle), new XAttribute("d", polygonPath)));
                    }
                }
                else if (feature.BasicGeometry is Polygon)
                {
                    var polygon = feature.BasicGeometry as Polygon;

                    var polygonPath = GetPolygonPath(polygon);

                    var xElement = new XElement(XName.Get("path"), new XAttribute(XName.Get("style"), pathStyle), new XAttribute("d", polygonPath));

                    elements.Add(xElement);
                }
                else if (feature.BasicGeometry is LineString)
                {
                    var lineString = feature.BasicGeometry as LineString;
                    var path = GetLineStringPath(lineString);
                    var xElement = new XElement(XName.Get("polyline"), new XAttribute(XName.Get("style"), polypathStyle), new XAttribute("points", path));
                    elements.Add(xElement);
                }
                else if (feature.BasicGeometry is MultiLineString)
                {
                    var multiLineString = feature.BasicGeometry as MultiLineString;

                    foreach (var geometry in multiLineString.Geometries)
                    {
                        var lineString = geometry as LineString;
                        var path = GetLineStringPath(lineString);
                        var xElement = new XElement(XName.Get("polyline"), new XAttribute(XName.Get("style"), polypathStyle), new XAttribute("points", path));
                        elements.Add(xElement);
                    }
                }
                else
                {
                    Console.WriteLine("Unknown basic geometry: " + feature.BasicGeometry.GetType().Name);
                }
            }
            return elements;
        }

        static string GetPolygonPath(Polygon polygon)
        {
            var points = new List<string>();
    
            foreach (var coordinate in polygon.Coordinates)
            {
                var x = (0 + (coordinate.X)) / 10000;
                var y = (0 + (coordinate.Y * -1)) / 10000;
                var point = x.ToString(CultureInfo.InvariantCulture) + "," + y.ToString(CultureInfo.InvariantCulture);

                points.Add(point);
            }

            var @join = "M " + string.Join(" ", points) + " Z";
            return @join;
        }

        static string GetLineStringPath(LineString lineString)
        {
            var points = new List<string>();

            foreach (var coordinate in lineString.Coordinates)
            {
                var x = (0 + (coordinate.X)) / 10000;
                var y = (0 + (coordinate.Y * -1)) / 10000;
                var point = x.ToString(CultureInfo.InvariantCulture) + "," + y.ToString(CultureInfo.InvariantCulture);

                points.Add(point);
            }

            var @join = string.Join(" ", points);
            return @join;
        }
    }
}
