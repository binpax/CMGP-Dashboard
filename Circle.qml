import QtQuick 2.6

/**
  * A rectangle, whose height is contrained to its width and the border radius is set so that
  * the rectangle has the appereance of a circle.
  */
Rectangle {
    height: width
    radius: height / 2
}
