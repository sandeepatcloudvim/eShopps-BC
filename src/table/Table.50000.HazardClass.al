table 50000 "Hazard Class"
{
    DataClassification = ToBeClassified;
    Caption = 'Hazard Class';

    fields
    {
        field(1; "Hazard Code"; Code[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Hazard Code';
        }
        field(2; "Hazard Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Hazard Description';
        }
    }

    keys
    {
        key(Key1; "Hazard Code")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}