reportextension 50001 ExtenStandardSalesInvoice extends "Standard Sales - Invoice"
{
    dataset
    {
        add(Header)
        {
            column(Document_Date_CBR; Format("Document Date", 0, '<month,2>/<day,2>/<year,2>'))
            {

            }
            column(Due_Date_CBR; FORMAT("Due Date", 0, '<month,2>/<day,2>/<year,2>'))
            {

            }
        }

    }

    requestpage
    {
        // Add changes to the requestpage here
    }
}