codeunit 50101 "Sample Event Subscribers"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnBeforeRunWithCheck', '', false, false)]
    local procedure OnBeforeRunWithCheck(Sender: Codeunit "Gen. Jnl.-Post Line")
    begin
        Sender.GetGLSetup();
        Message('Only Sender is used, therefore only this parameter is specified.');
    end;
}
