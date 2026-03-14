/// <summary>
/// This page extension is used to demonstrate manual event subscribing. It has an action added to the customer list page that runs a test page. The test page has a click event on a button that is subscribed to by the codeunit "KNH Auto Subscriber". When the button is clicked, it will trigger the event subscriber function in the codeunit, which will display a message. This demonstrates how to manually subscribe to events and have them handled by a codeunit in AL.
/// </summary>
pageextension 52030 "KNH CustomerList" extends "Customer List"
{
    actions
    {
        addlast("&Customer")
        {
            action(KNH_TestPage)
            {
                ApplicationArea = All;
                ToolTip = 'Manual Subscribing';
                Caption = 'Manual Subscribing';
                Image = TestFile;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Category7;
                PromotedOnly = true;
                RunObject = page "KNH TestPage";
            }
        }
    }
}