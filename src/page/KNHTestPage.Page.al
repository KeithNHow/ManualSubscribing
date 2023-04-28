/// <summary>
/// Page KNH_TestPage (ID 52500).
/// </summary>
page 52030 "KNH_TestPage"
{
    Caption = 'Test Page';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(KNH_ClickMe)
            {
                ApplicationArea = All;
                Caption = 'Click Me';
                ToolTip = 'Click Me';
                Image = Cloud;

                trigger OnAction()
                var
                    ManualSubscriber: Codeunit "KNH_ManualSubscriber";
                begin
                    BindSubscription(ManualSubscriber);
                    ClickMe();
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
