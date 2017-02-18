# UIScrollViewTest

## References
http://mokagio.github.io/tech-journal/2015/06/24/ios-scroll-view-and-interface-builder.html

## Key Notes
The key thing to understand is that UIScrollView evaluates its size at runtime based on the content - link needed. For this reason when in IB you will always see it as having 0 width and 0 height (really).

Using a content view with the same width or height as the superview where the scroll view is contained does the trick of allowing us to define the subview’s Auto Layout constraints, but only if the subviews as a whole are pinned to the edges of the content view.
 
Finally, since we need to use the content view width to set the UIScrollView width, any padding inside the scroll view has to be achieved as margin between the subview’s and the content view.

## How to Create a UIScrollView Quick Guide
1. Click view controller, click size inspector. Set simulated size to freeform with height 1200
2. Add a UIScrollView to interface builder under view. Pin it's edges to the superview.
3. Add a UIView as the UIScrollView's content view. Name it ContentView
4. Pin ContentView to the edges of the UIScrollView
5. Add a equal width constraint between ContentView and the UIScrollView’s superview.
6. Add a constraint to ContentView's height to whatever it needs to be (e.g. 1000)
