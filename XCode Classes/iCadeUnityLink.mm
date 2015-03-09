//
//  iCadeUnityLink.m
//  Unity-iPhone
//
//  Created by Matthew Klundt on 12/11/12.
//  Updated by James Baxter 09/03/15.
//

#import "iCadeUnityLink.h"
#import "iCadeState.h"
#include "UnityInterface.h"

@implementation iCadeUnityLink

enum JoystickButtonNumbers
{
	BTN_1 = 1,
	BTN_2 = 2,
	BTN_3 = 3,
	BTN_4 = 4,
	BTN_5 = 5,
	BTN_6 = 6,
	BTN_7 = 7,
	BTN_8 = 8,
	BTN_UP = 9,
	BTN_RIGHT = 10,
	BTN_DOWN = 11,
	BTN_LEFT = 12
};

- (id) init {
	self = [super init];
	
	joystickNum = 0; // 0=any, or 1-4 for a specific player
	
	return self;
}


- (void) stateChanged:(iCadeState)state {
	//NSLog(@"State Changed!");	
}

- (void) setJoystickButton:(int)buttonNum state:(bool)state {
	char buf[128];
	if (joystickNum > 0) {
		// send to specific joystick
		sprintf (buf, "joystick %d button %d", joystickNum, buttonNum);
		UnitySetKeyState (UnityStringToKey (buf), state);
	}
	
	// Mirror button input into virtual joystick 0
	sprintf (buf, "joystick button %d", buttonNum);
	UnitySetKeyState (UnityStringToKey (buf), state);
}

- (void) buttonDown:(iCadeState)button {
	NSLog(@"Button Press!");
	switch (button) {
		case iCadeJoystickDown:
			[self setJoystickButton:BTN_DOWN state:true];
			break;
		case iCadeJoystickUp:
			[self setJoystickButton:BTN_UP state:true];
			break;
		case iCadeJoystickLeft:
			[self setJoystickButton:BTN_LEFT state:true];
			break;
		case iCadeJoystickRight:
			[self setJoystickButton:BTN_RIGHT state:true];
			break;
		case iCadeButtonA:
			[self setJoystickButton:BTN_1 state:true];
			break;
		case iCadeButtonB:
			[self setJoystickButton:BTN_2 state:true];
			break;
		case iCadeButtonC:
			[self setJoystickButton:BTN_3 state:true];
			break;
		case iCadeButtonD:
			[self setJoystickButton:BTN_4 state:true];
			break;
		case iCadeButtonE:
			[self setJoystickButton:BTN_5 state:true];
			break;
		case iCadeButtonF:
			[self setJoystickButton:BTN_6 state:true];
			break;
		case iCadeButtonG:
			[self setJoystickButton:BTN_7 state:true];
			break;
		case iCadeButtonH:
			[self setJoystickButton:BTN_8 state:true];
			break;
		default:
			break;
	}
}

- (void) buttonUp:(iCadeState)button {
	NSLog(@"Button Release!");
	switch (button) {
		case iCadeJoystickDown:
			[self setJoystickButton:BTN_DOWN state:false];
			break;
		case iCadeJoystickUp:
			[self setJoystickButton:BTN_UP state:false];
			break;
		case iCadeJoystickLeft:
			[self setJoystickButton:BTN_LEFT state:false];
			break;
		case iCadeJoystickRight:
			[self setJoystickButton:BTN_RIGHT state:false];
			break;
		case iCadeButtonA:
			[self setJoystickButton:BTN_1 state:false];
			break;
		case iCadeButtonB:
			[self setJoystickButton:BTN_2 state:false];
			break;
		case iCadeButtonC:
			[self setJoystickButton:BTN_3 state:false];
			break;
		case iCadeButtonD:
			[self setJoystickButton:BTN_4 state:false];
			break;
		case iCadeButtonE:
			[self setJoystickButton:BTN_5 state:false];
			break;
		case iCadeButtonF:
			[self setJoystickButton:BTN_6 state:false];
			break;
		case iCadeButtonG:
			[self setJoystickButton:BTN_7 state:false];
			break;
		case iCadeButtonH:
			[self setJoystickButton:BTN_8 state:false];
			break;
		default:
			break;
	}
}

@end
