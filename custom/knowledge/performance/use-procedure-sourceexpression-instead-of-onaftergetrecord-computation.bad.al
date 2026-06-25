pageextension 50105 "Running Balance Extension" extends "General Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field(RunningBalance; RunningBalance)
            {
                ApplicationArea = All;
                Caption = 'Running Balance';
                ToolTip = 'Specifies the running balance in LCY.';
                AutoFormatType = 1;
                Visible = false;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        RunningBalance := CalcRunningGLAccBalance.GetGLAccBalance(Rec);
    end;

    var
        CalcRunningGLAccBalance: Codeunit "Calc. Running GL. Acc. Balance";
        RunningBalance: Decimal;
}
