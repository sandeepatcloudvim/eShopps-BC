tableextension 50000 MyExtension extends Item
{
    fields
    {
        field(50000; "Environmental Hazard"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Environmental Hazard';
        }
        field(50001; "Marine Pollutant"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Marine Pollutant';
        }
        field(50002; "MSDS Provided"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'MSDS Provided';
        }
        field(50003; "UN Number"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'UN Number';
        }
        field(50004; "Shipping Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Shipping Name';
        }
        field(50005; "Packaging Group"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Packaging Group';
        }
        field(50006; "PI-IOTA"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'PI-IOTA';
        }
        field(50007; "Tie Box No"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Tie Box No';
        }
        field(50008; "Tie Layer No"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Tie Layer No';
        }
        field(50009; "Total Pallet Unit"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Total Pallet Unit';
        }
        field(50010; "Hazard Class"; Code[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Hazard Class';
            TableRelation = "Hazard Class";
        }

    }

    var
        myInt: Integer;
}