---
---

# TicketSale entiteit (bij opzoeken van evenementen)



|| | | |
|type| COUPON of DEFAULT| ticket sale met coupon of kansentarief| |
|ticketSaleCoupon| TicketSaleCoupon| details van de ticketSaleCoupon| |
|remainingForEvent| PeriodConstraint| aantal mogelijke ticketSale met ticketSaleCoupon| |
|remainingTotal| PeriodConstraint| aantal mogelijke ticketSales| |
|buyConstraintReason| String| reden waarom ticket sale niet mogelijk is| |
|priceClasses| List<PriceClass>| prijs klasse||

