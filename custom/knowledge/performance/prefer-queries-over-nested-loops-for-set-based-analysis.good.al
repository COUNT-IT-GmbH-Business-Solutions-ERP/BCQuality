query 50100 "Customer Item Sales Summary"
{
    QueryType = Normal;

    elements
    {
        dataitem(Customer; Customer)
        {
            column(CustomerNo; "No.")
            {
            }
            column(CustomerName; Name)
            {
            }

            dataitem(SalesLine; "Sales Line")
            {
                DataItemLink = "Sell-to Customer No." = Customer."No.";

                filter(LineTypeFilter; Type)
                {
                }
                filter(PostingDateFilter; "Posting Date")
                {
                }

                column(ItemNo; "No.")
                {
                }
                column(SalesAmount; Amount)
                {
                    Method = Sum;
                }
            }
        }
    }
}
