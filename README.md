# libft Xcode tests

These are my personal tests for libft, written in objective C using the XCTest framework within Xcode. \n
They are far from perfect but do test some things not found in other tests.

## Set up

To set up these tests follow these steps:

- git clone this repo using ```git clone https://github.com/lgutter/libft_xcode_tests.git ```
- Create a new project in Xcode for a Static C Library
- Drag and drop all your .c files and your libft.h files to the Xcode project and choose the library as target.
- Build your library using the Play button on the top, just to check your library compiles within Xcode.
- Go to the test navigator using the button to the right of to the :warning: sign.
- Using the + button on the bottom left, create a new unit test target, and make sure to select Objective-C as language and the correct target.
- Go back to the project navigator using the folder icon in the top left.
- Drag and drop the folders from the repo to the Tests folder in the Xcode project navigator, AND BE SURE to select the test target as target!
- Now you can go back to the test navigator, where you will be able to see all the tests and their results.

## Running the tests

To run the tests, hold LMB on the play button and then select the test button. Xcode will now run all the tests on your libft.
If one of the tests gave a system error, Xcode will jump to that test or function.
This could be caused by protection tests if you haven't protected that function, in which case you can just right click the test and disable it.

Once Xcode is able to run all the tests it will show you which have failed, and when you click the test you will get more information on what failed.

Good luck!

## Support
Can't get it to work or have bug reports / suggestions?

Feel free to contact me: https://profile.intra.42.fr/users/lgutter