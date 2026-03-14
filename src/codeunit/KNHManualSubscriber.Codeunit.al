/// <summary>
/// This codeunit is used to demonstrate the use of Manual event subscriptions.
/// Use of the Manual property means that the event subscriber functions in the codeunit are only bound to the codeunit instance when the BINDSUBSCRIPTION method is called from the code that raises the event.
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
