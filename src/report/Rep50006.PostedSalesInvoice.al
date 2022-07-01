report 50006 "PostedSalesInvoice"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './PostedSalesInvoice.rdl';


    dataset
    {
        dataitem(SalesInvoiceHeader; "Sales Invoice Header")
        {
            column(CompanyInfo_Picture; CompanyInfo.Picture)
            { }
            column(InvoiceNo; "No.")
            { }
            column(CompanyInfoAdd1; CompanyInfoAdd[1])
            { }
            column(CompanyInfoAdd2; CompanyInfoAdd[2])
            { }
            column(CompanyInfoAdd3; CompanyInfoAdd[3])
            { }
            column(CompanyInfoAdd4; CompanyInfoAdd[4])
            { }
            column(CompanyInfoAdd5; CompanyInfoAdd[5])
            { }
            column(BillTo1; BillTo[1])
            { }
            column(BillTo2; BillTo[2])
            { }
            column(BillTo3; BillTo[3])
            { }
            column(BillTo4; BillTo[4])
            { }
            column(BillTo5; BillTo[5])
            { }
            column(BillTo6; BillTo[6])
            { }
            column(ShipTo1; ShipTo[1])
            { }
            column(ShipTo2; ShipTo[2])
            { }
            column(ShipTo3; ShipTo[3])
            { }
            column(ShipTo4; ShipTo[4])
            { }
            column(ShipTo5; ShipTo[5])
            { }
            column(ShipTo6; ShipTo[6])
            { }
            column(Payment_Terms_Code; "Payment Terms Code")
            { }
            column(Order_No_; "Order No.")
            { }
            column(Order_Date; "Order Date")
            { }
            column(Shipment_Date; "Shipment Date")
            { }
            column(Salesperson_Code; "Salesperson Code")
            { }
            column(Sell_to_Customer_No_; "Sell-to Customer No.")
            { }
            column(User_ID; "User ID")
            { }
            column(Shipment_Method_Code; "Shipment Method Code")
            { }
            column(Shipping_Agent_Code; "Shipping Agent Code")
            { }
            column(Due_Date; "Due Date")
            { }
            column(DefectiveAllowance; DefectiveAllowance)
            { }
            column(PickupAllowance; PickupAllowance)
            { }
            column(VolumeDiscount; VolumeDiscount)
            { }
            column(Invoice_Discount_Amount; "Invoice Discount Amount")
            { }
            column(Posting_Date; "Posting Date")
            { }
            dataitem(SalesInvoiceLine; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemLinkReference = SalesInvoiceHeader;
                DataItemTableView = SORTING("Document No.", "Line No.");

                column(ItemNo; "No.")
                { }
                column(Description; Description)
                { }
                column(Quantity; Quantity)
                { }
                column(Unit_of_Measure; "Unit of Measure")
                { }
                column(Unit_Price; "Unit Price")
                { }
                column(Line_Discount__; "Line Discount %")
                { }
                column(Line_Discount_Amount; Amount)
                { }
                column(OrderQty; OrderQty)
                { }
                trigger OnAfterGetRecord()
                var
                    SalesLine_L: Record "Sales Line";
                begin
                    OrderQty := 0;
                    SalesLine_L.Reset();
                    SalesLine_L.SetRange("Document No.", "Order No.");
                    SalesLine_L.SetRange("Line No.", "Order Line No.");
                    If SalesLine_L.FindFirst() then
                        OrderQty := SalesLine_L.Quantity
                    else
                        OrderQty := Quantity;
                end;


            }
            trigger OnAfterGetRecord()
            var
            begin
                Clear(BillTo);
                Clear(ShipTo);
                BillTo[1] := "Bill-to Name";
                BillTo[2] := "Bill-to Name 2";
                BillTo[3] := "Bill-to Contact";
                BillTo[4] := "Bill-to Address";
                BillTo[5] := "Bill-to Address 2";
                BillTo[6] := "Bill-to City" + ' ' + "Bill-to County" + ' ' + "Bill-to Post Code";
                CompressArray(BillTo);

                ShipTo[1] := "Ship-to Name";
                ShipTo[2] := "Ship-to Name 2";
                ShipTo[3] := "Ship-to Contact";
                ShipTo[4] := "Ship-to Name";
                ShipTo[5] := "Ship-to Name 2";
                ShipTo[6] := "Ship-to City" + ' ' + "Ship-to County" + ' ' + "Ship-to Post Code";
                CompressArray(ShipTo);
            end;


            trigger OnPreDataItem()
            var
            begin
                Clear(CompanyInfoAdd);
                CompanyInfoAdd[1] := CompanyInfo.Name;
                CompanyInfoAdd[2] := CompanyInfo."Name 2";
                CompanyInfoAdd[3] := CompanyInfo.Address;
                CompanyInfoAdd[4] := CompanyInfo."Address 2";
                CompanyInfoAdd[5] := CompanyInfo.City + ' ' + CompanyInfo.County + ' ' + CompanyInfo."Post Code";
                CompressArray(CompanyInfoAdd);
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;

                    // }
                }
            }
        }


    }


    labels
    {
        InvoiceCaption = 'INVOICE';
        InvoiceDateInvoiceCaption = 'Date';
        InvoiceNoInvoiceCaption = 'INVOICE #';
        SONumberCaption = 'S.O.No.';
        PONumberCaption = 'P.O.No.';
        ItemCaption = 'Item #:';
        BilltoCaption = 'BILL TO';
        ShiptoCaption = 'SHIP TO';
        DueDateCaption = 'Due Date';
        SalesRepCaption = 'REP';
        VIACaption = 'Ship Via';
        ShippedCaption = 'Shipped';
        TermsCaption = 'TERMS';
        DescriptionCaption = 'Description';
        OrderedCaption = 'Qty Ord';
        BOCaption = 'BO';
        UMCaption = 'UM';
        PriceCaption = 'Price';
        DiscountCaption = '**Disc';
        NetAmountCaption = 'Amount';
        DefectiveAllowCaption = 'Defective Allow';
        PickupAllowanceCaption = 'Pickup Allowance';
        VolumeDiscountCaption = 'Volume Discount';
        SubTotalCaption = 'Subtotal';
        TotalCaption = 'Total';
        TaxesCaption = 'Taxes';
    }
    trigger OnPreReport()
    var
        myInt: Integer;
    begin
        CompanyInfo.get();
        CompanyInfo.CalcFields(Picture);
    end;

    var
        myInt: Integer;
        BillTo: array[6] of Text;
        ShipTo: array[6] of Text;
        CompanyInfo: Record "Company Information";
        CompanyInfoAdd: array[5] of Text;
        OrderQty: Decimal;
}