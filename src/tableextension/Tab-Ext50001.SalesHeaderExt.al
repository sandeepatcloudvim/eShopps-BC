tableextension 50001 "SalesHeader_Ext" extends "Sales Header"
{
    fields
    {
        field(50000; DefectiveAllowance; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50001; PickupAllowance; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50002; VolumeDiscount; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}