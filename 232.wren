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

System.print(bestA)
System.print(bestB)
