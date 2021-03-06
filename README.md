# libft Xcode tests

**PLEASE WRITE YOUR OWN TESTS BEFORE TRYING OUT THESE!\
The whole reason I made these instead of using the ones already on GitHub, is because it taught me a LOT.**

These are my personal tests for libft, written in objective C using the XCTest framework within Xcode.

All functions are tested (part 1, 2 and bonus), but there is no NULL protection testing.\
These also do not tests cases where the real function breaks, so consider these tests the basics!\
You might however, find errors not found by some other tests on GitHub.

## Set up

To set up these tests follow these steps:

- git clone & open the test project by running this from your terminal:\
```git clone https://github.com/lgutter/libft_xcode_tests.git && open libft_xcode_tests/libftt*```
- Click the arrow next to the blue icon labeled "libfttests" to reveal a couple folders, including a "Source Files" group (folder icon).
- Drag and drop all your .c files and your libft.h file to the "Source Files" group in Xcode (drag them just below the "Source Files" folder icon in the Xcode interface), and click finish in the window that pops up. (note: the target has to be libfttests, but this should be default.)
- Build your library using the Play button on the top, just to check your library compiles within Xcode. (it might show you some implicit conversions, I would advise you to fix those.)

## Running the tests

To run the tests, hold LMB on the play button and then select the test button. Xcode will now run all the tests on your libft.\
If one of the tests gave a system error, Xcode will jump to that test or function.\
If xcode shows the error at a "free" call, you did not properly allocate that return string. Otherwise the problem is in whatever function xcode points to.\
You can temporarily disable a test that gives a system error to complete all tests, just don't forget to correct that mistake!\
Once Xcode is able to run all the tests it will show you which have failed, and when you click the test you will get more information on what failed.

Good luck!

## Support

Can't get it to work or have bug reports / suggestions?\
Feel free to contact me: https://profile.intra.42.fr/users/lgutter