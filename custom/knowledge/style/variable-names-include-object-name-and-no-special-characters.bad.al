codeunit 50102 "Variable Naming Sample"
{
    procedure SomeProcedure()
    var
        WIPBuffer: Record "Job WIP Buffer";
        Postline: Codeunit "Gen. Jnl.-Post Line";
        "Amount (LCY)": Decimal;
    begin
        "Amount (LCY)" := 0;
        Postline.GetGLSetup();
        WIPBuffer.Reset();
    end;
}
