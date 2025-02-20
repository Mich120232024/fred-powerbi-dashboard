let
    // Federal Funds Rate
    GetFedFunds = FREDConnection("FEDFUNDS"),
    
    // M2 Money Supply
    GetM2 = FREDConnection("M2SL"),
    
    // Bank Credit
    GetBankCredit = FREDConnection("TOTBKCR"),
    
    // Treasury Yield
    GetTreasury = FREDConnection("DGS10"),
    
    // Combine all monetary policy indicators
    CombinedData = Table.NestedJoin(
        GetFedFunds, "date",
        GetM2, "date",
        "M2Data", JoinKind.LeftOuter
    )
in
    CombinedData