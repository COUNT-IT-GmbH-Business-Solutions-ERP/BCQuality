codeunit 50103 "Procedure Documentation"
{
    procedure CalculateRemainingAmount(TotalAmount: Decimal; PaidAmount: Decimal): Decimal
    begin
        exit(TotalAmount - PaidAmount);
    end;
}
