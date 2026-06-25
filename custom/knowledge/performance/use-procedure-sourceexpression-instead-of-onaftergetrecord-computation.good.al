pageextension 50105 "Running Balance Extension" extends "General Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field(RunningBalance; CalcRunningGLAccBalance.GetGLAccBalance(Rec))
            {
                ApplicationArea = All;
                Caption = 'Running Balance';
                ToolTip = 'Specifies the running balance in LCY.';
                AutoFormatType = 1;
                Visible = false;
            }
        }
    }

    var
        CalcRunningGLAccBalance: Codeunit "Calc. Running GL. Acc. Balance";
}
