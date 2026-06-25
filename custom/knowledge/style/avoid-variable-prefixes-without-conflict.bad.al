procedure SomeProcedure()
var
    KONBillingType: Record "KON Billing Type";
begin
    KONBillingType.Comment := 'Unnecessary Prefix';
end;

procedure SomeProcedureWithConflict()
var
    BillingType: Record "KON Billing Type";
    BillingType2: Record "ONK Billing Type";
begin
    BillingType.Comment := 'Ambiguous naming style for mixed tables';
    BillingType2.Comment := 'Inconsistent disambiguation approach';
end;
