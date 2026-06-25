pageextension 90163 "CIT Apply Customer Entries" extends "Apply Customer Entries"
{
    layout
    {
        addafter(Prepayment)
        {
            field("Invoice Include Prepayment"; Rec."Invoice Include Prepayment")
            {
                ApplicationArea = All;
            }
        }
    }
}
