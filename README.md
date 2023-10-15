# SwiftUIResizeIssue

This SwiftUI code is intended to create a two-column view that has, on the
left, a few lines of text, a control, and an image. The image should be flush
against the leading and bottom edges. The control should be centered. The text
should be leading-edge aligned and take up the width of the column.

The right column should have some lines of text, and a couple of buttons.

There are several issues, with Xcode 15 on macOS 13.6:

1. The `SettingsView` preview in Xcode crops the top of the text and won’t
	size appropriately to show all the lines of text.

2. The running code sizes the left column correctly (basically, the width
	of the image), but doesn’t expand the text at the top to fill the width
	of the column, *unless you grow the window*. Note that the column
	doesn’t change size, only the text, until you grow it far enough.
	
3. Various attempts to get it to behave seem to have no effect. There are notes
	in the code for some of these attempts.

![](https://i.imgur.com/T4g6UCI.gifv)
