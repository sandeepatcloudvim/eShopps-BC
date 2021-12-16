reportextension 50004 ExtenStandardPurchaseOrder extends "Standard Purchase - Order"
{
    dataset
    {
        add("Purchase Header")
        {
            column(Expected_Receipt_Date_CBR; Format("Expected Receipt Date", 0, '<month,2>/<day,2>/<year,2>'))
            {

            }

            column(Document_Date_CBR; Format("Document Date", 0, '<month,2>/<day,2>/<year,2>'))
            {

            }
            column(Due_Date_CBR; FORMAT("Due Date", 0, '<month,2>/<day,2>/<year,2>'))
            {

            }
            column(Order_Date_CBR; FORMAT("Order Date", 0, '<month,2>/<day,2>/<year,2>'))
            {

            }
        }

    }

    requestpage
    {
        // Add changes to the requestpage here
    }
}