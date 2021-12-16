reportextension 50002 ExtenStandardSalesQuote extends "Standard Sales - Quote"
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
            column(Quote_Valid_Until_Date_CBR; FORMAT("Quote Valid Until Date", 0, '<month,2>/<day,2>/<year,2>'))
            {

            }
        }

    }

    requestpage
    {
        // Add changes to the requestpage here
    }
}