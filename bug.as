function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  var rect1:Rectangle = obj1.getBounds(obj1.parent);
  var rect2:Rectangle = obj2.getBounds(obj2.parent);
  return rect1.intersects(rect2);
}

// ... later in the code ...

var myMovieClip:MovieClip = new MovieClip();
addChild(myMovieClip);

// This will likely cause an error if myMovieClip is not added to the display list
if (checkCollision(myMovieClip, anotherObject)) {
  trace("Collision detected!");
}