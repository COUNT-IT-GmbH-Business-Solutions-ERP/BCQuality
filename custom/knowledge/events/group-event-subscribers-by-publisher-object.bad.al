codeunit 50103 "PurchPost Subscribers"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePurchInvHeaderInsert', '', false, false)]
    local procedure OnBeforePurchInvHeaderInsert(CommitIsSupressed: Boolean; var PurchHeader: Record "Purchase Header"; var PurchInvHeader: Record "Purch. Inv. Header")
    begin
        PurchInvHeader.Validate("CIG C4D DMS Document Id", PurchHeader."CIG C4D DMS Document Id");
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post", 'OnCodeOnAfterItemJnlPostBatchRun', '', false, false)]
    local procedure OnCodeOnAfterItemJnlPostBatchRun(var HideDialog: Boolean)
    begin
        HideDialog := true;
    end;
}
