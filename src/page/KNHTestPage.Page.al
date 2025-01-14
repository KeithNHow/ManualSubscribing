/// <summary>
/// Page KNH TestPage (ID 52500).
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
                    ManualSubscriber: Codeunit "KNH ManualSubscriber";
                begin
                    unbindSubscription(ManualSubscriber);
                    this.ClickMe(); //Show only Auto Subscription
                    bindSubscription(ManualSubscriber);
                    this.ClickMe(); //Show both Subscriptions
                end;
            }
        }
    }

    /// <summary>
    /// Integration event to demo auto and manual subcriptions.
    /// </summary>
    [IntegrationEvent(false, false)]
    local procedure ClickMe()
    begin
    end;
}
