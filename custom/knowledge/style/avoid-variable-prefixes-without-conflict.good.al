procedure SomeProcedure()
var
    BillingType: Record "KON Billing Type";
begin
    BillingType.Comment := 'Without Prefix';
end;

procedure SomeProcedureWithConflict()
var
    KONBillingType: Record "KON Billing Type";
    ONKBillingType: Record "ONK Billing Type";
begin
    KONBillingType.Comment := 'Must use a Prefix here';
    ONKBillingType.Comment := 'Must use a Prefix here';
end;
