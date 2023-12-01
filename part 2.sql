Auctions(AuctionID, AuctionDate, AuctionType)
PK(AuctionID)

Address(addressID, addressID, addressLine, suburb, postcode, region, country)
PK(addressID)

AuctionsType(AuctionsTypeID, AuctionType)
PK(AuctionsTypeID)
FK(AuctionsType) -> Auctions(AuctionsType)

Catalogues(CatalogueID, Name, Description, showcasephoto, Check)
PK(CatalogueID)

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
