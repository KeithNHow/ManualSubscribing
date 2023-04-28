/// <summary>
/// Codeunit KNH_Manual Subscriber (ID 52501).
/// </summary>
codeunit 52031 "KNH_ManualSubscriber"
{
    EventsubscriberInstance = Manual;
    [EventSubscriber(ObjectType::Page, Page::KNH_TestPage, 'ClickMe', '', false, false)]
    local procedure ManualFunc()
    begin
        Message('Manual Subscription Event.');
    end;
}
