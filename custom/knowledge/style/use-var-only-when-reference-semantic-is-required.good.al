codeunit 50104 "Var Parameter Sample"
{
    procedure GoodCodeExampleByValue()
    var
        Customer: Record Customer;
    begin
        ParameterCallByValue(Customer);
    end;

    local procedure ParameterCallByValue(Customer: Record Customer)
    begin
        Message('Customer No.: %1', Customer."No.");
        Message('Customer Name: %1', Customer.Name);
    end;

    procedure GoodCodeExampleByReference()
    var
        Customer: Record Customer;
    begin
        ParameterCallByReference(Customer);
        Customer.Modify(true);
    end;

    local procedure ParameterCallByReference(var Customer: Record Customer)
    begin
        Customer."Name 2" := 'MODIFIED NAME';
    end;
}
