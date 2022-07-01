pageextension 50003 "PostedSalesInvoice_Ext" extends "Posted Sales Invoice"
{
    layout
    {
        addafter("Salesperson Code")
        {
            field(DefectiveAllowance; Rec.DefectiveAllowance)
            {
                ApplicationArea = all;
                Caption = 'Defective Allowance';
            }
            field(PickupAllowance; Rec.PickupAllowance)
            {
                ApplicationArea = all;
                Caption = 'Pickup Allowance';
            }
            field(VolumeDiscount; Rec.VolumeDiscount)
            {
                ApplicationArea = all;
                Caption = 'Volume Discount';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}