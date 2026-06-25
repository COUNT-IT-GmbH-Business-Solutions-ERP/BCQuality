codeunit 50102 "Variable Naming Sample"
{
    procedure SomeProcedure()
    var
        JobWIPBuffer: Record "Job WIP Buffer";
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
        AmountLCY: Decimal;
    begin
        AmountLCY := 0;
        GenJnlPostLine.GetGLSetup();
        JobWIPBuffer.Reset();
    end;
}
