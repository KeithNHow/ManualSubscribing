/// <summary>
/// This codeunit demonstrates the use of automatic event subscriptions.
/// Use of the staticAutomatic value means that the event subscriber functions in the codeunit are automatically bound to the codeunit instance for handling the events that they subscribe to. This essentially activates the subscriber functions for the codeunit instance without needing to explicitly bind them in code. This is the default behavior.
/// </summary>
codeunit 52030 "KNH Auto Subscriber"
{
    EventSubscriberInstance = StaticAutomatic;
    [EventSubscriber(ObjectType::Page, Page::"KNH TestPage", 'ClickMe', '', false, false)]
    local procedure AutoFunc()
    begin
        Message('This is Subscriber Event 1');
    end;
}
