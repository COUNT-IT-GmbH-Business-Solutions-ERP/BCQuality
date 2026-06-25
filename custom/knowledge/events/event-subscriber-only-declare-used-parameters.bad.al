codeunit 50101 "Sample Event Subscribers"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnBeforeRunWithCheck', '', false, false)]
    local procedure OnBeforeRunWithCheck(Sender: Codeunit "Gen. Jnl.-Post Line"; var GenJournalLine2: Record "Gen. Journal Line"; var GenJournalLine: Record "Gen. Journal Line")
    begin
        Sender.GetGLSetup();
        Message('GenJournalLine and GenJournalLine2 are unused parameters.');
    end;
}
