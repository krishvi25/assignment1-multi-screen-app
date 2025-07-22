# assignment1-multi-screen-app
multi screen app to print updated value using flutter

The app has three screens: Screen A, Screen B, and Screen C.
A value (hello from A!!) is displayed on screen A passed from A → B → C,
and the value is updated in Screen C
When navigating back (C → B → A), the updated value is preserved and displayed.

Screen A
StatefulWidget
Initial Value: "Hello from A!!"
Button :
Navigates to Screen B using Navigator.push()
takes the result updated string coming from Screen B
If a result is returned which is (not null), it updates value using setState()

Screen B
StatefulWidget
Receives value from Screen A via constructor
Stores it in a local mutable variable currentValue in initState()
Button ("Click")
Navigates to Screen C using Navigator.push()
Waits for updated value from Screen C
If result is returned, updates currentValue using setState()
Button ("Back to A")
Sends updated currentValue back to Screen A using Navigator.pop()

Screen C
StatefulWidget
Receives value from Screen B via constructor
Stores It in updatedValue, a mutable String variable
Button  ("Update Text")
When tapped, updates updatedValue string (value " is Updated in C")
Triggers setState() to refresh UI
Button  ("Updated, Go Back")
Uses Navigator.pop() to return the final updatedValue to Screen B



