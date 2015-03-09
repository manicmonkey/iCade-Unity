iCade Unity
=======================

Add iCade controller support to your Unity iOS project.


Usage
-----
In your Xcode project, add the files that begin with iCade to the Classes folder. Open AppController.mm from this repo, and copy/paste the lines of code to the correct places in the Unity generated AppController.mm of your project.

In MonoDevelop, simply use Input.GetKeyDown(KeyCode.JoystickButton#)), Input.GetKeyUp(KeyCode.JoystickButton#)) or Input.GetKey(KeyCode.JoystickButton#)). The corresponding button numbers are shown in iCade_keymap.jpg.

Changelog
----

Forked from https://github.com/scarnie/iCade-iOS
* iCadeReaderView.h, iCadeReaderView.m and iCadeState.h slightly modified (retains/releases delegate)

Forked from https://github.com/mattfox12/iCade-Unity
* Changed keymap and updated reference image