Auctions(AuctionID, AuctionDate, AuctionType)
PK(AuctionID)
FK(AddressID)->Address(addressID) 
FK(AuctionTypeID) -> AuctionType(AuctionTypeID)
FK(CatalogueID) -> Catalogues(CatalogueID)// true

OnlineBidderRegistration(bidderNumber)
PK(bidderNumber)
  
Address(addressID, addressID, addressLine, suburb, postcode, region, country)
PK(addressID)// true

AuctionsType(AuctionsTypeID, AuctionType)
PK(AuctionsTypeID)// true

Catalogues(CatalogueID, Name, Description, showcasephoto, Check)
PK(CatalogueID)
FK(CataloguetypeID) -> CatalogueType(CataloguetypeID) // true
  
CatalogueType(CataloguetypeID, catalogueType)
PK(CatalogueID)// true

BidsOnLots(bidAmount, bidTime, winningBid)
PK(bidAmount, bidTime, winningBid)
FK(InvoiceID) -> invoice(InvoiceID)

  
Bidders(BidderID, LotsID, AuctionID, BidderID, BidderAmount, BidderTime, isOnlineBidder, WinningBid)
PK(BidderID)
Fk(LotsID) -> Lotsders(LotsID)
FK(AuctionID) -> Auctions(AuctionID)
FK(BidderID) -> Bidders(BidderID)
FK(addressID) -> Address(addressID)
  
OnlineBidders(biddersID)
PK(biddersID)

OnfloorBidders(bidderID)
PK(biddersID)

OnlineBidderRegistration(bidderNumber)
PK(bidderNumber)
FK(CreditCard) -> CreditCard(CreditCardID)

CreditCard(CreditCardID, CardNumber, CardHolderName, ExpirationDate, CVCCode)
PK(CreditCardID)
  
sellers(sellerID, sellerName, CommissionRate, LottingFee)
PK(sellerID)

sellersOfLots(lotFee, commission)
PK(lotsFee, commission)
  
Lotsders(LotsID, Title, Description, minPrice, maxPrice)
PK(LotsID)

