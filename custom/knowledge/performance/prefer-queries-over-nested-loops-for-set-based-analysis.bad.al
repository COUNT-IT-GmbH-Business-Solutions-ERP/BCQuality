procedure CalculateCustomerItemSalesWithNestedLoops(StartDate: Date; EndDate: Date)
var
    Customer: Record Customer;
    Item: Record Item;
    SalesLine: Record "Sales Line";
    SalesAmount: Decimal;
begin
    if Customer.FindSet() then
        repeat
            if Item.FindSet() then
                repeat
                    SalesAmount := 0;
                    SalesLine.Reset();
                    SalesLine.SetRange("Sell-to Customer No.", Customer."No.");
                    SalesLine.SetRange(Type, SalesLine.Type::Item);
                    SalesLine.SetRange("No.", Item."No.");
                    SalesLine.SetRange("Posting Date", StartDate, EndDate);
                    if SalesLine.FindSet() then
                        repeat
                            SalesAmount += SalesLine.Amount;
                        until SalesLine.Next() = 0;

                    // Consume result for this customer-item combination.
                until Item.Next() = 0;
        until Customer.Next() = 0;
end;
