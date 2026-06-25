codeunit 50100 "Sample Subscribers"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnAfterManualReleaseSalesDoc', '', false, false)]
    local procedure MyLogicOnAfterManualReleaseSalesDoc(var SalesHeader: Record "Sales Header")
    begin
        Message('Event Sub Name must be the same as the subscribed event');
    end;
}
