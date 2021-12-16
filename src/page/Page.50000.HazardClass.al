page 50000 "Hazard Class"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    DelayedInsert = true;
    SourceTable = "Hazard Class";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Hazard Code"; Rec."Hazard Code")
                {
                    ApplicationArea = All;

                }
                field("Hazard Description"; Rec."Hazard Description")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}