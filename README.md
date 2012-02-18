iHelpers
========

iHelpers is a framework designed to help with iOS development, making some tasks that would require a large sum of lines of code require just one or two. It was created and is being manteinaned by Eduardo Almeida (MegaEduX.com). 

This project is still very young, but already has a great sum of features!

Why is iHelpers a framework?
----------------------------

iHelpers used to be just a set of classes that you could copy to your project and use. The problem is that iHelpers is a big project, with 20 classes and counting. This adds a lot of build time to your project. With frameworks, that time is reduced to none or almost none.

How can I use iHelpers?
-----------------------

Compile the framework, and then add it to your project along with all the required frameworks.

The required frameworks are the following:

	UIKit.framework
	Foundation.framework
	CoreGraphics.framework
	SystemConfiguration.framework
	GameKit.framework
	iAd.framework
	MediaPlayer.framework
	AVFoundation.framework
	QuartzCore.framework

Everywhere you want to use iHelpers, or on your prefix file, add:

	#import <iHelpers/iHelpers.h>

And it's done. You can also choose to generate and install the iHelpers documentation on Xcode by choosing the Documentation scheme on the iHelpers project. You need appledoc [http://gentlebytes.com/appledoc/] installed though.

What can iHelpers do?
---------------------

iHelpers is becoming a bit too big to explain each class. It aims to do everything. Just compile its documentation or look at the header files.

Does this work on the Mac OS X SDK?
-----------------------------------

This was made with the iOS SDK in mind, so even though some classes may work (the NS… forward classes may, don't even think on the UI… ones), they are completely unsupported.

Let's talk about licenses...
-------------------------------

iHelpers is distributed with a BSD license.
