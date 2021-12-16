reportextension 50003 ExtenStandardSalesOrderConf extends "Standard Sales - Order Conf."
{
    dataset
    {
        add(Header)
        {
            column(Shipment_Date_CBR; Format("Shipment Date", 0, '<month,2>/<day,2>/<year,2>'))
            {

            }

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