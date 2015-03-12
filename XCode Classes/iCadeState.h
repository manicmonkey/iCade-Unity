/*
 Copyright (C) 2011 by Stuart Carnie
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */

typedef enum iCadeState {
    iCadeJoystickNone       = 0x000,
    iCadeJoystickUp         = 0x001,
    iCadeJoystickRight      = 0x002,
    iCadeJoystickDown       = 0x004,
    iCadeJoystickLeft       = 0x008,
    
    iCadeJoystickUpRight    = iCadeJoystickUp   | iCadeJoystickRight,
    iCadeJoystickDownRight  = iCadeJoystickDown | iCadeJoystickRight,
    iCadeJoystickUpLeft     = iCadeJoystickUp   | iCadeJoystickLeft,
    iCadeJoystickDownLeft   = iCadeJoystickDown | iCadeJoystickLeft,
    
    iCadeButton1            = 0x010,
    iCadeButton2            = 0x020,
    iCadeButton3            = 0x040,
    iCadeButton4            = 0x080,
    iCadeButton5            = 0x100,
    iCadeButton6            = 0x200,
    iCadeButton7            = 0x400,
    iCadeButton8            = 0x800,
    
} iCadeState;
