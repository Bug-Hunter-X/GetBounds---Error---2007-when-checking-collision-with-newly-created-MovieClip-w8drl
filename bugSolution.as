function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  // Ensure both objects are added to the display list before checking bounds
  if (obj1.parent == null || obj2.parent == null) return false;
  var rect1:Rectangle = obj1.getBounds(obj1.parent);
  var rect2:Rectangle = obj2.getBounds(obj2.parent);
  return rect1.intersects(rect2);
}

// ... later in the code ...

var myMovieClip:MovieClip = new MovieClip();
addChild(myMovieClip); // Added this line to fix the issue

if (checkCollision(myMovieClip, anotherObject)) {
  trace("Collision detected!");
}