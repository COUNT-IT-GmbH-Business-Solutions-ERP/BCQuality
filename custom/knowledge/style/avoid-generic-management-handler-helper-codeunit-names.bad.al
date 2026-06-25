codeunit 50056 "RKS Check Date Management"
{
    procedure CheckDates(ShortcutDimCode: array[8] of Code[20]; DateToCheck: Date)
    var
        GeneralLedgerSetup: Record "General Ledger Setup";
        GLFieldRef: FieldRef;
        GLRecRef: RecordRef;
        DimCodeFromSetup: Code[20];
        i: Integer;
    begin
        if not GeneralLedgerSetup.Get() then
            exit;

        GLRecRef.GetTable(GeneralLedgerSetup);

        for i := 1 to ArrayLen(ShortcutDimCode) do
            if ShortcutDimCode[i] <> '' then begin
                GLFieldRef := GLRecRef.Field(80 + i);
                DimCodeFromSetup := GLFieldRef.Value();
                CheckDatesForDimensionValue(DimCodeFromSetup, ShortcutDimCode[i], DateToCheck);
            end;
    end;

    local procedure CheckDatesForDimensionValue(DimCodeFromSetup: Code[20]; ShortcutDimCodeValue: Code[20]; DateToCheck: Date)
    begin
    end;
}
