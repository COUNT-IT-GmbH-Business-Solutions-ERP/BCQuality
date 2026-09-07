codeunit 50103 "Procedure Documentation"
{
    /// <summary>Calculates the remaining amount after applying the paid amount.</summary>
    /// <param name="TotalAmount">The total amount due.</param>
    /// <param name="PaidAmount">The amount already paid.</param>
    /// <returns>The amount that remains due.</returns>
    procedure CalculateRemainingAmount(TotalAmount: Decimal; PaidAmount: Decimal): Decimal
    begin
        exit(TotalAmount - PaidAmount);
    end;
}
