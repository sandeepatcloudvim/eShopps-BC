tableextension 50003 "SalesInvoiceHeader_Ext" extends "Sales Invoice Header"
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