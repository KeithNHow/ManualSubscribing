/// <summary>
/// This page is used to demonstrate the use of Auto and Manual event subscriptions.
/// BindSubscription => Binds the event subscriber methods in the codeunit to the current codeunit instance for handling the events that they subscribe to. This essentially activates the subscriber functions for the codeunit instance.
/// </summary>
page 52030 "KNH TestPage"
{
    Caption = 'Test Page';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(KNHClickMe)
            {
                ApplicationArea = All;
                Caption = 'Subscribe';
                ToolTip = 'Show Subscription';
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                Image = Cloud;

                trigger OnAction()
                var
                    ManualSubscriber: Codeunit "KNH Manual Subscriber";
                begin
                    bindSubscription(ManualSubscriber);
                    this.ClickMe(); //Show both Subscribers
                    unbindSubscription(ManualSubscriber);
                    this.ClickMe(); //Show only Auto Subscriber
                end;
            }
        }
    }

    [IntegrationEvent(false, false)]
    local procedure ClickMe()
    begin
    end;
}
