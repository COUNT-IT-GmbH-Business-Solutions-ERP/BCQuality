procedure GoodCode()
var
    Vendor: Record Vendor;
    TotalBalance: Decimal;
begin
    Vendor.SetAutoCalcFields(Balance);
    Vendor.SetRange("Country/Region Code", 'RS');

    if Vendor.FindSet() then
        repeat
            TotalBalance += Vendor.Balance;
        until Vendor.Next() = 0;
end;
