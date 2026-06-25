codeunit 50103 "PurchPost Subscribers"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePurchInvHeaderInsert', '', false, false)]
    local procedure OnBeforePurchInvHeaderInsert(CommitIsSupressed: Boolean; var PurchHeader: Record "Purchase Header"; var PurchInvHeader: Record "Purch. Inv. Header")
    begin
        PurchInvHeader.Validate("CIG C4D DMS Document Id", PurchHeader."CIG C4D DMS Document Id");
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnRunOnAfterPostInvoice', '', false, false)]
    local procedure OnRunOnAfterPostInvoice(var PurchInvHeader: Record "Purch. Inv. Header"; var PreviewMode: Boolean)
    var
        CC4DDSetup: Record "CIG C4D Setup";
        QueueManagement: Codeunit "CIG C4D Queue Management";
        RecRef: RecordRef;
    begin
        if PreviewMode then
            exit;

        if not CC4DDSetup.ValidateSetup() then
            exit;

        RecRef.GetTable(PurchInvHeader);
        QueueManagement.AddRefToQueue(RecRef);
    end;
}
