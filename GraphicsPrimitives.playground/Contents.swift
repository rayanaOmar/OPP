import UIKit
import Darwin

struct Point {
    var x: Double
    var y: Double
}

struct Line {
    var start: Point
    var end: Point
    
    func length() -> Double{
        return sqrt(pow(end.x - start.x, 2) + pow(end.y - start.y, 2))
    }
}

struct Triangle{
    var points: [Point]
    
    func area() -> Double{
        var a = points[0]
        var b = points[1]
        var c = points[2]
        
        return (a.x * (b.y - c.y) + b.x * (c.y - a.y) + c.x * (a.y - b.y)) * 0.5
    }
}
//Main Section
var line = Line(start: Point(x: 1, y: 2), end: Point(x: 4, y: 6))

print(line.length())

var triangle = Triangle(points: [Point(x: 0, y: 0),Point(x: 3, y: 0),Point(x: 3, y: 9)])

print(triangle.area())

