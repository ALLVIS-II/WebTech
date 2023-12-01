Auctions(AuctionID, AuctionDate, AuctionType)
PK(AuctionID)
FK(AddressID)->Address(addressID) 
FK(AuctionTypeID) -> AuctionType(AuctionTypeID)
FK(CatalogueID) -> Catalogues(CatalogueID)// true
  
Address(addressID, addressID, addressLine, suburb, postcode, region, country)
PK(addressID)// true

AuctionsType(AuctionsTypeID, AuctionType)
PK(AuctionsTypeID)// true


Catalogues(CatalogueID, Name, Description, showcasephoto, Check)
PK(CatalogueID)
FK
CatalogueType(CataloguetypeID, catalogueType)
PK(CatalogueID)


Bidders(BidderID, LotsID, AuctionID, BidderID, BidderAmount, BidderTime, isOnlineBidder, WinningBid)
PK(BidderID)
Fk(LotsID) -> Lotsders(LotsID)
FK(AuctionID) -> Auctions(AuctionID)
FK(BidderID) -> Bidders(BidderID)

OnlineBidders(biddersID)
PK(biddersID)

OnfloorBidders(bidderID)
PK(biddersID)


sellers(sellerID, sellerName, CommissionRate, LottingFee)
PK(sellerID)

Lotsders(LotsID, Title, Description, minPrice, maxPrice)
PK(LotsID)
