pageextension 50000 Extend_ItemCard_CBR extends "Item Card"
{
    layout
    {
        addafter(Description)
        {
            field("Description 2"; Rec."Description 2")
            {
                ApplicationArea = All;
            }
        }
        addafter("Purchasing Code")
        {
            field("Environmental Hazard"; Rec."Environmental Hazard")
            {
                ApplicationArea = All;
            }
            field("Marine Pollutant"; Rec."Marine Pollutant")
            {
                ApplicationArea = All;
            }
            field("MSDS Provided"; Rec."MSDS Provided")
            {
                ApplicationArea = All;
            }
            field("UN Number"; Rec."UN Number")
            {
                ApplicationArea = All;
            }
            field("Shipping Name"; Rec."Shipping Name")
            {
                ApplicationArea = All;
            }
            field("Hazard Class"; Rec."Hazard Class")
            {
                ApplicationArea = All;
            }
            field("Packaging Group"; Rec."Packaging Group")
            {
                ApplicationArea = All;
            }
            field("PI-IOTA"; Rec."PI-IOTA")
            {
                ApplicationArea = All;
            }
            field("Tie Box No"; Rec."Tie Box No")
            {
                ApplicationArea = All;
            }
            field("Tie Layer No"; Rec."Tie Layer No")
            {
                ApplicationArea = All;
            }
            field("Total Pallet Unit"; Rec."Total Pallet Unit")
            {
                ApplicationArea = All;
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