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
                Caption = 'Click Me';
                ToolTip = 'Click Me';
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                Image = Cloud;

                trigger OnAction()
                var
                    ManualSubscriber: Codeunit "KNH ManualSubscriber";
                begin
                    BindSubscription(ManualSubscriber);
                    this.ClickMe();
                    UnbindSubscription(ManualSubscriber);
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
