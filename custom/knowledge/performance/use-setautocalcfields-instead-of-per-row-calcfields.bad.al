procedure BadCode()
var
    Vendor: Record Vendor;
    TotalBalance: Decimal;
begin
    Vendor.SetRange("Country/Region Code", 'RS');

    if Vendor.FindSet() then
        repeat
            Vendor.CalcFields(Balance);
            TotalBalance += Vendor.Balance;
        until Vendor.Next() = 0;
end;
