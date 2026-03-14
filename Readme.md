# Summary
This extension consists of 1 page, 1 pageExt and 2 Codeunits

# Test page
This page is used to demonstrate the use of Auto and Manual event subscriptions.

BindSubscription => This binds the event subscriber methods in the codeunit to the current codeunit instance for handling the events that they subscribe to. This essentially activates the subscriber functions for the codeunit instance.

# Auto Subscriber codeunit
This codeunit demonstrates the use of automatic event subscriptions.

Use of the staticAutomatic value means that the event subscriber functions in the codeunit are automatically bound to the codeunit instance for handling the events that they subscribe to. This essentially activates the subscriber functions for the codeunit instance without needing to explicitly bind them in code.

# Manual Subscriber codeunit
This codeunit is used to demonstrate the use of Manual event subscriptions.

Use of the Manual property means that the event subscriber functions in the codeunit are only bound to the codeunit instance when the BINDSUBSCRIPTION method is called from the code that raises the event.

# Customer List page
This page extension is used to demonstrate manual event subscribing. It has an action added to the customer list page that runs a test page. The test page has a click event on a button that is subscribed to by the codeunit "KNH Auto Subscriber". When the button is clicked, it will trigger the event subscriber function in the codeunit, which will display a message. This demonstrates how to manually subscribe to events and have them handled by a codeunit in AL.