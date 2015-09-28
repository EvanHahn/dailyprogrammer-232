import "inputs" for coordinates

var bestDist = null
var bestA = null
var bestB = null

var iterA = null
while (iterA = coordinates.iterate(iterA)) {
  var a = coordinates.iteratorValue(iterA)

  var iterB = iterA
  while (iterB = coordinates.iterate(iterB)) {
    var b = coordinates.iteratorValue(iterB)

    var dx = a[0] - b[0]
    var dy = a[1] - b[1]
    var dist = (dx * dx) + (dy * dy)

    if ((bestDist == null) || (dist < bestDist)) {
      bestDist = dist
      bestA = a
      bestB = b
    }
  }
}

var print = Fn.new {|coordinate|
  System.write("(")
  System.write(coordinate[0])
  System.write(",")
  System.write(coordinate[1])
  System.write(")")
}

print.call(bestA)
System.write(" ")
print.call(bestB)
System.print()
