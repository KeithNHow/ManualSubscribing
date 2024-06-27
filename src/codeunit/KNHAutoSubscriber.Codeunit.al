/// <summary>
/// Codeunit "KNH AutoSubscriber" (ID 52030).
/// /// EventSubscriberInstance => Specifies how event subscriber functions in a codeunit are bound to the codeunit instance and the events that they subscribe to.
/// StaticAutomatic => Event Subscriber bound to event atutomatically when called from the code that raises the event.
/// </summary>
codeunit 52030 "KNH AutoSubscriber"
{
    EventSubscriberInstance = StaticAutomatic;
    [EventSubscriber(ObjectType::Page, Page::"KNH TestPage", 'ClickMe', '', false, false)]
    local procedure AutoFunc()
    begin
        Message('Auto Subscription Event.');
    end;
}
