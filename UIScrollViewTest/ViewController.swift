//
//  ViewController.swift
//  UIScrollViewTest
//
//  Created by Zion Perez on 1/3/17.
//  Copyright © 2017 Zion Perez. All rights reserved.
//

import UIKit

// READ ME
/**
 http://mokagio.github.io/tech-journal/2015/06/24/ios-scroll-view-and-interface-builder.html
 
 The key thing to understand is that UIScrollView evaluates its size at runtime based on the content - link needed. For this reason when in IB you will always see it as having 0 width and 0 height (really).
 
 Using a content view with the same width or height as the superview where the scroll view is contained does the trick of allowing us to define the subview’s Auto Layout constraints, but only if the subviews as a whole are pinned to the edges of the content view.
 
 Finally, since we need to use the content view width to set the UIScrollView width, any padding inside the scroll view has to be achieved as margin between the subview’s and the content view.
 
 Step 1) click view controller, click size inspector. Set simulated size to freeform with height 1200
 Step 2) Add a UIScrollView to interface builder under view. Pin it's edges to the superview.
 Step 3) Add a UIView as the UIScrollView's content view. Name it ContentView
 Step 4) Pin ContentView to the edges of the UIScrollView
 Step 5) Add a equal width constraint between ContentView and the UIScrollView’s superview.
 Step 6) Add a constraint to ContentView's height to whatever it needs to be (e.g. 1000)
 **/
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

