/// <summary>
/// Codeunit KNH ManualSubscriber (ID 52501).
/// EventSubscriberInstance => Specifies how event subscriber functions in a codeunit are bound to the codeunit instance and the events that they subscribe to.
/// Manual => Event Subscriber bound to event only if the BINDSUBSCRIPTION method is called from the code that raises the event.
/// </summary>
codeunit 52031 "KNH Manual Subscriber"
{
    EventSubscriberInstance = Manual;
    [EventSubscriber(ObjectType::Page, Page::"KNH TestPage", 'ClickMe', '', false, false)]
    local procedure ManualFunc()
    begin
        Message('This is Subscriber Event 2');
    end;
}
