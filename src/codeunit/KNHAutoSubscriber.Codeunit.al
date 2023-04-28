/// <summary>
/// Codeunit "KNH_AutoSubscriber" (ID 52502).
/// </summary>
codeunit 52030 "KNH_AutoSubscriber"
{
    EventsubscriberInstance = StaticAutomatic;
    [EventSubscriber(ObjectType::Page, Page::KNH_TestPage, 'ClickMe', '', false, false)]
    local procedure AutoFunc()
    begin
        Message('Auto Subscription Event.');
    end;
}
