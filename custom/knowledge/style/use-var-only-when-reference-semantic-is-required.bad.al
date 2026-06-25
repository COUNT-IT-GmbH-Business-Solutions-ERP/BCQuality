codeunit 50104 "Var Parameter Sample"
{
    procedure BadCodeExample()
    var
        Customer: Record Customer;
    begin
        ParameterCallByReference(Customer);
    end;

    local procedure ParameterCallByReference(var Customer: Record Customer)
    begin
        Message('Customer No.: %1', Customer."No.");
    end;
}
