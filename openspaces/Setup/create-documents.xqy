xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";
declare namespace fpml = "http://www.fpml.org/2007/FpML-4-4";


(
xdmp:document-insert("/openspaces/demo/msg-ex01-request-confirmation.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="RequestTradeConfirmation" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.ubsw.com/mid">TQ12937</messageId>
      <sentBy>UBSW</sentBy>
      <sendTo>MATCHSRV</sendTo>
      <creationTimestamp>2003-04-02T15:38:00-04:00</creationTimestamp>
   </header>
   <trade>
      <tradeHeader>
         <partyTradeIdentifier>
            <partyReference href="party1"/>
            <tradeId tradeIdScheme="http://www.ubsw.com/fpmltid">FX1234</tradeId>
         </partyTradeIdentifier>
         <tradeDate>2003-04-02-04:00</tradeDate>
      </tradeHeader>
      <fxSingleLeg>
         <exchangedCurrency1>
            <payerPartyReference href="party1"/>
            <receiverPartyReference href="party2"/>
            <paymentAmount>
               <currency>GBP</currency>
               <amount>1000000</amount>
            </paymentAmount>
         </exchangedCurrency1>
         <exchangedCurrency2>
            <payerPartyReference href="party2"/>
            <receiverPartyReference href="party1"/>
            <paymentAmount>
               <currency>USD</currency>
               <amount>1520000</amount>
            </paymentAmount>
         </exchangedCurrency2>
         <valueDate>2004-04-04-04:00</valueDate>
         <exchangeRate>
            <quotedCurrencyPair>
               <currency1>GBP</currency1>
               <currency2>USD</currency2>
               <quoteBasis>Currency2PerCurrency1</quoteBasis>
            </quotedCurrencyPair>
            <rate>1.52</rate>
         </exchangeRate>
      </fxSingleLeg>
   </trade>
   <party id="party1">
      <partyId>UBSW</partyId>
   </party>
   <party id="party2">
      <partyId>JPMC</partyId>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex02-trade-confirmed.xml" ,

<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="TradeConfirmed" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.example.com/messageId">MS/2003/04/02/15-38</messageId>
      <sentBy>MATCHSRV</sentBy>
      <sendTo>UBSW</sendTo>
      <creationTimestamp>2003-04-02T15:38:00Z</creationTimestamp>
   </header>
   <trade>
      <tradeHeader>
         <partyTradeIdentifier>
            <partyReference href="party2"/>
            <tradeId tradeIdScheme="http://www.jpmorgan.com/fpmltid">XYZ789</tradeId>
         </partyTradeIdentifier>
         <partyTradeIdentifier>
            <partyReference href="party1"/>
            <tradeId tradeIdScheme="http://www.ubsw.com/fpmltid">FX1234</tradeId>
         </partyTradeIdentifier>
         <tradeDate>2003-04-02Z</tradeDate>
      </tradeHeader>
      <fxSingleLeg>
         <exchangedCurrency1>
            <payerPartyReference href="party1"/>
            <receiverPartyReference href="party2"/>
            <paymentAmount>
               <currency>GBP</currency>
               <amount>1000000</amount>
            </paymentAmount>
         </exchangedCurrency1>
         <exchangedCurrency2>
            <payerPartyReference href="party2"/>
            <receiverPartyReference href="party1"/>
            <paymentAmount>
               <currency>USD</currency>
               <amount>1520000</amount>
            </paymentAmount>
         </exchangedCurrency2>
         <valueDate>2004-04-04Z</valueDate>
         <exchangeRate>
            <quotedCurrencyPair>
               <currency1>GBP</currency1>
               <currency2>USD</currency2>
               <quoteBasis>Currency2PerCurrency1</quoteBasis>
            </quotedCurrencyPair>
            <rate>1.52</rate>
         </exchangeRate>
      </fxSingleLeg>
   </trade>
   <party id="party1">
      <partyId>UBSW</partyId>
   </party>
   <party id="party2">
      <partyId>JPMC</partyId>
   </party>
<price>3</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex04-eqd-option-increase.xml" ,

<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="TradeIncreaseRequest" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <conversationId conversationIdScheme="http://www.drkw.com/conversationId/OTC">OTCCallorPutSpread45678</conversationId>
      <messageId messageIdScheme="http://www.drkw.com/messageId/OTC">OTCCallorPutSpread456a789b</messageId>
      <sentBy partyIdScheme="http://www.MsgParty.com/partyId">drkw</sentBy>
      <creationTimestamp>2000-08-01T08:57:00Z</creationTimestamp>
   </header>
   <increase>
      <trade>
         <tradeHeader>
            <partyTradeIdentifier>
               <partyReference href="party1"/>
               <tradeId tradeIdScheme="http://www.drkw.com/tradeId/OTC">1234</tradeId>
            </partyTradeIdentifier>
            <tradeDate id="TradeDate">2001-07-13Z</tradeDate>
         </tradeHeader>
         <equityOptionTransactionSupplement>
            <productType>americanCallStock</productType>
            <buyerPartyReference href="party2"/>
            <sellerPartyReference href="party1"/>
            <optionType>Put</optionType>
            <underlyer>
               <singleUnderlyer>
                  <equity>
                     <instrumentId instrumentIdScheme="http://www.fpml.org/schemes/4.1/instrumentId">STM-FP</instrumentId>
                     <description>STMicroelectronics N.V. ordinary shares</description>
                     <exchangeId exchangeIdScheme="http://www.fpml.org/schemes/4.1/exchangeId">NSE</exchangeId>
                  </equity>
               </singleUnderlyer>
            </underlyer>
            <equityExercise>
               <equityAmericanExercise>
                  <commencementDate>
                     <adjustableDate>
                        <unadjustedDate>2001-07-13Z</unadjustedDate>
                        <dateAdjustments>
                           <businessDayConvention>NONE</businessDayConvention>
                        </dateAdjustments>
                     </adjustableDate>
                  </commencementDate>
                  <expirationDate>
                     <adjustableDate>
                        <unadjustedDate>2001-09-27Z</unadjustedDate>
                        <dateAdjustments>
                           <businessDayConvention>NONE</businessDayConvention>
                        </dateAdjustments>
                     </adjustableDate>
                  </expirationDate>
                  <latestExerciseTime>
                     <hourMinuteTime>17:15:00</hourMinuteTime>
                     <businessCenter>GBLO</businessCenter>
                  </latestExerciseTime>
                  <latestExerciseTimeType>SpecificTime</latestExerciseTimeType>
                  <equityExpirationTimeType>Close</equityExpirationTimeType>
               </equityAmericanExercise>
               <automaticExercise>true</automaticExercise>
               <equityValuation>
                  <valuationTimeType>Close</valuationTimeType>
               </equityValuation>
               <settlementCurrency>EUR</settlementCurrency>
               <settlementPriceSource>OfficialClose</settlementPriceSource>
               <settlementType>Physical</settlementType>
            </equityExercise>
            <strike>
               <strikePrice>32.00</strikePrice>
            </strike>
            <spotPrice>30.00</spotPrice>
            <numberOfOptions>10000</numberOfOptions>
            <equityPremium>
               <payerPartyReference href="party2"/>
               <receiverPartyReference href="party1"/>
               <paymentAmount>
                  <currency>EUR</currency>
                  <amount>405000</amount>
               </paymentAmount>
               <paymentDate>
                  <unadjustedDate>2001-07-17Z</unadjustedDate>
                  <dateAdjustments>
                     <businessDayConvention>NONE</businessDayConvention>
                  </dateAdjustments>
               </paymentDate>
               <pricePerOption>
                  <currency>EUR</currency>
                  <amount>2.70</amount>
               </pricePerOption>
            </equityPremium>
         </equityOptionTransactionSupplement>
         <calculationAgent>
            <calculationAgentPartyReference href="party1"/>
         </calculationAgent>
         <documentation>
            <masterAgreement>
               <masterAgreementType>ISDA2002</masterAgreementType>
            </masterAgreement>
            <contractualDefinitions>ISDA2002Equity</contractualDefinitions>
         </documentation>
         <governingLaw>GBEN</governingLaw>
      </trade>
      <increaseTradeDate>2004-04-28Z</increaseTradeDate>
      <increaseEffectiveDate>2004-04-30Z</increaseEffectiveDate>
      <increaseInNumberOfOptions>100.00</increaseInNumberOfOptions>
      <outstandingNumberOfOptions>30.00</outstandingNumberOfOptions>
   </increase>
   <party id="party1">
      <partyId>DRKW</partyId>
   </party>
   <party id="party2">
      <partyId>Party B</partyId>
   </party>
<price>4</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex06-eqd-index-option-request-confirmation.xml" ,

<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="RequestTradeConfirmation" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <conversationId conversationIdScheme="http://www.partyA.com/conversationId/OTC">OTCCallorPutSpread45678</conversationId>
      <messageId messageIdScheme="http://www.partyA.com/messageId/OTC">OTCCallorPutSpread456a789b</messageId>
      <sentBy partyIdScheme="http://www.MsgParty.com/partyId">PartyA</sentBy>
      <creationTimestamp>2000-08-01T08:57:00Z</creationTimestamp>
   </header>
   <trade>
      <tradeHeader>
         <partyTradeIdentifier>
            <partyReference href="party1"/>
            <tradeId tradeIdScheme="http://www.partyA.com/tradeId/OTC">1234</tradeId>
         </partyTradeIdentifier>
         <tradeDate id="TradeDate">2001-07-13Z</tradeDate>
      </tradeHeader>
      <equityOptionTransactionSupplement>
         <productType>europeanCallIndex</productType>
         <buyerPartyReference href="party2"/>
         <sellerPartyReference href="party1"/>
         <optionType>Call</optionType>
         <underlyer>
            <singleUnderlyer>
               <index>
                  <instrumentId instrumentIdScheme="http://www.fpml.org/spec/2003/instrument-id-Reuters-RIC-1-0">SSMI</instrumentId>
                  <description>Swiss Market Index</description>
                  <exchangeId exchangeIdScheme="http://www.fpml.org/spec/2003/instrument-id-Reuters-RIC-1-0">NYSE</exchangeId>
               </index>
            </singleUnderlyer>
         </underlyer>
         <equityExercise>
            <equityEuropeanExercise>
               <expirationDate>
                  <adjustableDate>
                     <unadjustedDate>2004-12-19Z</unadjustedDate>
                     <dateAdjustments>
                        <businessDayConvention>NONE</businessDayConvention>
                     </dateAdjustments>
                  </adjustableDate>
               </expirationDate>
               <equityExpirationTimeType>OSP</equityExpirationTimeType>
            </equityEuropeanExercise>
            <automaticExercise>true</automaticExercise>
            <equityValuation id="valuation">
               <valuationTimeType>OSP</valuationTimeType>
            </equityValuation>
            <settlementDate>
               <relativeDate>
                  <periodMultiplier>2</periodMultiplier>
                  <period>D</period>
                  <dayType>Business</dayType>
                  <businessDayConvention>NONE</businessDayConvention>
                  <businessCenters>
                     <businessCenter>CHZU</businessCenter>
                  </businessCenters>
                  <dateRelativeTo href="valuation"/>
               </relativeDate>
            </settlementDate>
            <settlementCurrency>CHF</settlementCurrency>
            <settlementPriceSource>OfficialClose</settlementPriceSource>
            <settlementType>Cash</settlementType>
         </equityExercise>
         <strike>
            <strikePrice>8700</strikePrice>
         </strike>
         <numberOfOptions>2500</numberOfOptions>
         <equityPremium>
            <payerPartyReference href="party2"/>
            <receiverPartyReference href="party1"/>
            <paymentAmount>
               <currency>CHF</currency>
               <amount>300000</amount>
            </paymentAmount>
            <paymentDate>
               <unadjustedDate>2001-09-06Z</unadjustedDate>
               <dateAdjustments>
                  <businessDayConvention>NONE</businessDayConvention>
               </dateAdjustments>
            </paymentDate>
         </equityPremium>
         <exchangeLookAlike>true</exchangeLookAlike>
         <exchangeTradedContractNearest>true</exchangeTradedContractNearest>
         <multipleExchangeIndexAnnexFallback>true</multipleExchangeIndexAnnexFallback>
      </equityOptionTransactionSupplement>
      <calculationAgent>
         <calculationAgentPartyReference href="party1"/>
      </calculationAgent>
      <documentation>
         <masterAgreement>
            <masterAgreementType>ISDA2002</masterAgreementType>
         </masterAgreement>
         <contractualDefinitions>ISDA2002Equity</contractualDefinitions>
      </documentation>
      <governingLaw>GBEN</governingLaw>
   </trade>
   <party id="party1">
      <partyId>Party A</partyId>
   </party>
   <party id="party2">
      <partyId>Party B</partyId>
   </party>
<price>5</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex08-eqd-option-partial-termination.xml" ,

<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="TradeTerminationRequest" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <conversationId conversationIdScheme="http://www.drkw.com/conversationId/OTC">OTCCallorPutSpread45678</conversationId>
      <messageId messageIdScheme="http://www.drkw.com/messageId/OTC">OTCCallorPutSpread456a789b</messageId>
      <sentBy partyIdScheme="http://www.MsgParty.com/partyId">drkw</sentBy>
      <creationTimestamp>2000-08-01T08:57:00Z</creationTimestamp>
   </header>
   <termination>
      <trade>
         <tradeHeader>
            <partyTradeIdentifier>
               <partyReference href="party1"/>
               <tradeId tradeIdScheme="http://www.drkw.com/tradeId/OTC">1234</tradeId>
            </partyTradeIdentifier>
            <tradeDate id="TradeDate">2001-07-13Z</tradeDate>
         </tradeHeader>
         <equityOptionTransactionSupplement>
            <productType>americanCallStock</productType>
            <buyerPartyReference href="party2"/>
            <sellerPartyReference href="party1"/>
            <optionType>Put</optionType>
            <underlyer>
               <singleUnderlyer>
                  <equity>
                     <instrumentId instrumentIdScheme="http://www.fpml.org/schemes/4.1/instrumentId">STM-FP</instrumentId>
                     <description>STMicroelectronics N.V. ordinary shares</description>
                     <exchangeId exchangeIdScheme="http://www.fpml.org/schemes/4.1/exchangeId">NSE</exchangeId>
                  </equity>
               </singleUnderlyer>
            </underlyer>
            <equityExercise>
               <equityAmericanExercise>
                  <commencementDate>
                     <adjustableDate>
                        <unadjustedDate>2001-07-13Z</unadjustedDate>
                        <dateAdjustments>
                           <businessDayConvention>NONE</businessDayConvention>
                        </dateAdjustments>
                     </adjustableDate>
                  </commencementDate>
                  <expirationDate>
                     <adjustableDate>
                        <unadjustedDate>2001-09-27Z</unadjustedDate>
                        <dateAdjustments>
                           <businessDayConvention>NONE</businessDayConvention>
                        </dateAdjustments>
                     </adjustableDate>
                  </expirationDate>
                  <latestExerciseTime>
                     <hourMinuteTime>17:15:00</hourMinuteTime>
                     <businessCenter>GBLO</businessCenter>
                  </latestExerciseTime>
                  <latestExerciseTimeType>SpecificTime</latestExerciseTimeType>
                  <equityExpirationTimeType>Close</equityExpirationTimeType>
               </equityAmericanExercise>
               <automaticExercise>true</automaticExercise>
               <equityValuation>
                  <valuationTimeType>Close</valuationTimeType>
               </equityValuation>
               <settlementCurrency>EUR</settlementCurrency>
               <settlementPriceSource>OfficialClose</settlementPriceSource>
               <settlementType>Physical</settlementType>
            </equityExercise>
            <strike>
               <strikePrice>32.00</strikePrice>
            </strike>
            <spotPrice>30.00</spotPrice>
            <numberOfOptions>10000</numberOfOptions>
            <equityPremium>
               <payerPartyReference href="party2"/>
               <receiverPartyReference href="party1"/>
               <paymentAmount>
                  <currency>EUR</currency>
                  <amount>405000</amount>
               </paymentAmount>
               <paymentDate>
                  <unadjustedDate>2001-07-17Z</unadjustedDate>
                  <dateAdjustments>
                     <businessDayConvention>NONE</businessDayConvention>
                  </dateAdjustments>
               </paymentDate>
               <pricePerOption>
                  <currency>EUR</currency>
                  <amount>2.70</amount>
               </pricePerOption>
            </equityPremium>
         </equityOptionTransactionSupplement>
         <calculationAgent>
            <calculationAgentPartyReference href="party1"/>
         </calculationAgent>
         <documentation>
            <masterAgreement>
               <masterAgreementType>ISDA2002</masterAgreementType>
            </masterAgreement>
            <contractualDefinitions>ISDA2002Equity</contractualDefinitions>
         </documentation>
         <governingLaw>GBEN</governingLaw>
      </trade>
      <terminationTradeDate>2004-04-28Z</terminationTradeDate>
      <terminationEffectiveDate>2004-04-30Z</terminationEffectiveDate>
      <partial>
         <decreaseInNumberOfOptions>100.00</decreaseInNumberOfOptions>
         <outstandingNumberOfOptions>30.00</outstandingNumberOfOptions>
      </partial>
   </termination>
   <party id="party1">
      <partyId>Party A</partyId>
   </party>
   <party id="party2">
      <partyId>Party B</partyId>
   </party>
<price>6</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex09-eqd-option-termination.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="TradeTerminationRequest" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <conversationId conversationIdScheme="http://www.drkw.com/conversationId/OTC">OTCCallorPutSpread45678</conversationId>
      <messageId messageIdScheme="http://www.drkw.com/messageId/OTC">OTCCallorPutSpread456a789b</messageId>
      <sentBy partyIdScheme="http://www.MsgParty.com/partyId">drkw</sentBy>
      <creationTimestamp>2000-08-01T08:57:00Z</creationTimestamp>
   </header>
   <termination>
      <trade>
         <tradeHeader>
            <partyTradeIdentifier>
               <partyReference href="party1"/>
               <tradeId tradeIdScheme="http://www.drkw.com/tradeId/OTC">1234</tradeId>
            </partyTradeIdentifier>
            <tradeDate id="TradeDate">2001-07-13Z</tradeDate>
         </tradeHeader>
         <equityOptionTransactionSupplement>
            <productType>americanCallStock</productType>
            <buyerPartyReference href="party2"/>
            <sellerPartyReference href="party1"/>
            <optionType>Put</optionType>
            <underlyer>
               <singleUnderlyer>
                  <equity>
                     <instrumentId instrumentIdScheme="http://www.fpml.org/schemes/4.1/instrumentId">STM-FP</instrumentId>
                     <description>STMicroelectronics N.V. ordinary shares</description>
                     <exchangeId exchangeIdScheme="http://www.fpml.org/schemes/4.1/exchangeId">NSE</exchangeId>
                  </equity>
               </singleUnderlyer>
            </underlyer>
            <equityExercise>
               <equityAmericanExercise>
                  <commencementDate>
                     <adjustableDate>
                        <unadjustedDate>2001-07-13Z</unadjustedDate>
                        <dateAdjustments>
                           <businessDayConvention>NONE</businessDayConvention>
                        </dateAdjustments>
                     </adjustableDate>
                  </commencementDate>
                  <expirationDate>
                     <adjustableDate>
                        <unadjustedDate>2001-09-27Z</unadjustedDate>
                        <dateAdjustments>
                           <businessDayConvention>NONE</businessDayConvention>
                        </dateAdjustments>
                     </adjustableDate>
                  </expirationDate>
                  <latestExerciseTime>
                     <hourMinuteTime>17:15:00</hourMinuteTime>
                     <businessCenter>GBLO</businessCenter>
                  </latestExerciseTime>
                  <latestExerciseTimeType>SpecificTime</latestExerciseTimeType>
                  <equityExpirationTimeType>Close</equityExpirationTimeType>
               </equityAmericanExercise>
               <automaticExercise>true</automaticExercise>
               <equityValuation>
                  <valuationTimeType>Close</valuationTimeType>
               </equityValuation>
               <settlementCurrency>EUR</settlementCurrency>
               <settlementPriceSource>OfficialClose</settlementPriceSource>
               <settlementType>Physical</settlementType>
            </equityExercise>
            <strike>
               <strikePrice>32.00</strikePrice>
            </strike>
            <spotPrice>30.00</spotPrice>
            <numberOfOptions>10000</numberOfOptions>
            <equityPremium>
               <payerPartyReference href="party2"/>
               <receiverPartyReference href="party1"/>
               <paymentAmount>
                  <currency>EUR</currency>
                  <amount>405000</amount>
               </paymentAmount>
               <paymentDate>
                  <unadjustedDate>2001-07-17Z</unadjustedDate>
                  <dateAdjustments>
                     <businessDayConvention>NONE</businessDayConvention>
                  </dateAdjustments>
               </paymentDate>
               <pricePerOption>
                  <currency>EUR</currency>
                  <amount>2.70</amount>
               </pricePerOption>
            </equityPremium>
         </equityOptionTransactionSupplement>
         <calculationAgent>
            <calculationAgentPartyReference href="party1"/>
         </calculationAgent>
         <documentation>
            <masterAgreement>
               <masterAgreementType>ISDA2002</masterAgreementType>
            </masterAgreement>
            <contractualDefinitions>ISDA2002Equity</contractualDefinitions>
         </documentation>
         <governingLaw>GBEN</governingLaw>
      </trade>
      <terminationTradeDate>2004-04-28Z</terminationTradeDate>
      <terminationEffectiveDate>2004-04-30Z</terminationEffectiveDate>
      <full/>
   </termination>
   <party id="party1">
      <partyId>Party A</partyId>
   </party>
   <party id="party2">
      <partyId>Party B</partyId>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex12-cd-request-increase-confirmation.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="RequestIncreaseConfirmation" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.abcbank.com/message-Id">5765765gt6yg76</messageId>
      <sentBy partyIdScheme="http://www.abcbank.com/party-Id">ABCBICXXX</sentBy>
      <creationTimestamp>2002-12-03T04:27:00+05:00</creationTimestamp>
   </header>
   <increase>
      <trade>
         <tradeHeader>
            <partyTradeIdentifier>
               <partyReference href="party1"/>
               <tradeId tradeIdScheme="http://www.xyzbank.com/cd-trade-id">xyz1234</tradeId>
            </partyTradeIdentifier>
            <partyTradeIdentifier>
               <partyReference href="party2"/>
               <tradeId tradeIdScheme="http://www.abcbank.com/cd-trade-id">abc1234</tradeId>
            </partyTradeIdentifier>
            <tradeDate>2002-12-03+05:00</tradeDate>
         </tradeHeader>
         <creditDefaultSwap>
            <generalTerms>
               <effectiveDate>
                  <unadjustedDate>2002-12-04+05:00</unadjustedDate>
               </effectiveDate>
               <scheduledTerminationDate>
                  <adjustableDate>
                     <unadjustedDate>2007-09-06+05:00</unadjustedDate>
                  </adjustableDate>
               </scheduledTerminationDate>
               <sellerPartyReference href="party2"/>
               <buyerPartyReference href="party1"/>
               <referenceInformation>
                  <referenceEntity id="referenceEntity">
                     <entityName>Tenet Healthcare Corporation</entityName>
                     <entityId entityIdScheme="http://www.fpml.org/spec/2003/entity-id-RED-1-0">8G836J</entityId>
                  </referenceEntity>
                  <referenceObligation>
                     <bond>
                        <instrumentId instrumentIdScheme="http://www.fpml.org/spec/2002/instrument-id-CUSIP-1-0">88033GAT7</instrumentId>
                        <couponRate>0.06</couponRate>
                        <maturity>2011-12-01</maturity>
                     </bond>
                     <primaryObligorReference href="referenceEntity"/>
                  </referenceObligation>
               </referenceInformation>
            </generalTerms>
            <feeLeg>
               <periodicPayment>
                  <paymentFrequency>
                     <periodMultiplier>3</periodMultiplier>
                     <period>M</period>
                  </paymentFrequency>
                  <firstPaymentDate>2003-03-06+05:00</firstPaymentDate>
                  <rollConvention>6</rollConvention>
                  <fixedAmountCalculation>
                     <fixedRate>0.01</fixedRate>
                  </fixedAmountCalculation>
               </periodicPayment>
            </feeLeg>
            <protectionTerms>
               <calculationAmount id="notional">
                  <currency>USD</currency>
                  <amount>5000000</amount>
               </calculationAmount>
               <creditEvents>
                  <restructuring>
                     <restructuringType>ModR</restructuringType>
                  </restructuring>
               </creditEvents>
            </protectionTerms>
         </creditDefaultSwap>
         <collateral>
            <independentAmount>
               <payerPartyReference href="party2"/>
               <receiverPartyReference href="party1"/>
               <paymentDetail>
                  <paymentRule xsi:type="PercentageRule">
                     <paymentPercent>0.02</paymentPercent>
                     <notionalAmountReference href="notional"/>
                  </paymentRule>
               </paymentDetail>
            </independentAmount>
         </collateral>
         <documentation>
            <masterConfirmation>
               <masterConfirmationType>ISDA2003CreditNorthAmerican</masterConfirmationType>
               <masterConfirmationDate>2003-06-06+05:00</masterConfirmationDate>
            </masterConfirmation>
         </documentation>
      </trade>
      <increaseTradeDate>2004-04-28+05:00</increaseTradeDate>
      <increaseEffectiveDate>2004-04-30+05:00</increaseEffectiveDate>
      <increaseInNotionalAmount>
         <currency>USD</currency>
         <amount>1000000</amount>
      </increaseInNotionalAmount>
      <outstandingNotionalAmount>
         <currency>USD</currency>
         <amount>6000000</amount>
      </outstandingNotionalAmount>
      <payment>
         <payerPartyReference href="party1"/>
         <receiverPartyReference href="party2"/>
         <paymentAmount>
            <currency currencyScheme="http://www.fpml.org/ext/iso4217">USD</currency>
            <amount>100000</amount>
         </paymentAmount>
         <adjustedPaymentDate>2004-04-30+05:00</adjustedPaymentDate>
      </payment>
   </increase>
   <party id="party1">
      <partyId>XYZBICXXX</partyId>
      <partyName>XYZ Bank</partyName>
   </party>
   <party id="party2">
      <partyId>ABCBICXXX</partyId>
      <partyName>ABC Bank</partyName>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex13-cd-request-full-termination-confirmation.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="RequestTerminationConfirmation" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.abcbank.com/message-Id">5765765gt6yg76</messageId>
      <sentBy partyIdScheme="http://www.abcbank.com/party-Id">ABCBICXXX</sentBy>
      <creationTimestamp>2002-12-03T04:27:00-03:00</creationTimestamp>
   </header>
   <termination>
      <trade>
         <tradeHeader>
            <partyTradeIdentifier>
               <partyReference href="party1"/>
               <tradeId tradeIdScheme="http://www.xyzbank.com/cd-trade-id">xyz1234</tradeId>
            </partyTradeIdentifier>
            <partyTradeIdentifier>
               <partyReference href="party2"/>
               <tradeId tradeIdScheme="http://www.abcbank.com/cd-trade-id">abc1234</tradeId>
            </partyTradeIdentifier>
            <tradeDate>2002-12-03-03:00</tradeDate>
         </tradeHeader>
         <creditDefaultSwap>
            <generalTerms>
               <effectiveDate>
                  <unadjustedDate>2002-12-04-03:00</unadjustedDate>
               </effectiveDate>
               <scheduledTerminationDate>
                  <adjustableDate>
                     <unadjustedDate>2007-09-06-03:00</unadjustedDate>
                  </adjustableDate>
               </scheduledTerminationDate>
               <sellerPartyReference href="party2"/>
               <buyerPartyReference href="party1"/>
               <referenceInformation>
                  <referenceEntity id="referenceEntity">
                     <entityName>Tenet Healthcare Corporation</entityName>
                     <entityId entityIdScheme="http://www.fpml.org/spec/2003/entity-id-RED-1-0">8G836J</entityId>
                  </referenceEntity>
                  <referenceObligation>
                     <bond>
                        <instrumentId instrumentIdScheme="http://www.fpml.org/spec/2002/instrument-id-CUSIP-1-0">88033GAT7</instrumentId>
                        <couponRate>0.06</couponRate>
                        <maturity>2011-12-01</maturity>
                     </bond>
                     <primaryObligorReference href="referenceEntity"/>
                  </referenceObligation>
               </referenceInformation>
            </generalTerms>
            <feeLeg>
               <periodicPayment>
                  <paymentFrequency>
                     <periodMultiplier>3</periodMultiplier>
                     <period>M</period>
                  </paymentFrequency>
                  <firstPaymentDate>2003-03-06-03:00</firstPaymentDate>
                  <rollConvention>6</rollConvention>
                  <fixedAmountCalculation>
                     <fixedRate>0.01</fixedRate>
                  </fixedAmountCalculation>
               </periodicPayment>
            </feeLeg>
            <protectionTerms>
               <calculationAmount id="notional">
                  <currency>USD</currency>
                  <amount>5000000</amount>
               </calculationAmount>
               <creditEvents>
                  <restructuring>
                     <restructuringType>ModR</restructuringType>
                  </restructuring>
               </creditEvents>
            </protectionTerms>
         </creditDefaultSwap>
         <collateral>
            <independentAmount>
               <payerPartyReference href="party2"/>
               <receiverPartyReference href="party1"/>
               <paymentDetail>
                  <paymentRule xsi:type="PercentageRule">
                     <paymentPercent>0.02</paymentPercent>
                     <notionalAmountReference href="notional"/>
                  </paymentRule>
               </paymentDetail>
            </independentAmount>
         </collateral>
         <documentation>
            <masterConfirmation>
               <masterConfirmationType>ISDA2003CreditNorthAmerican</masterConfirmationType>
               <masterConfirmationDate>2003-06-06-03:00</masterConfirmationDate>
            </masterConfirmation>
         </documentation>
      </trade>
      <terminationTradeDate>2004-04-28-03:00</terminationTradeDate>
      <terminationEffectiveDate>2004-04-30-03:00</terminationEffectiveDate>
      <full/>
      <payment>
         <payerPartyReference href="party1"/>
         <receiverPartyReference href="party2"/>
         <paymentAmount>
            <currency currencyScheme="http://www.fpml.org/ext/iso4217">USD</currency>
            <amount>100000</amount>
         </paymentAmount>
         <adjustedPaymentDate>2004-04-30-03:00</adjustedPaymentDate>
      </payment>
   </termination>
   <party id="party1">
      <partyId>XYZBICXXX</partyId>
      <partyName>XYZ Bank</partyName>
   </party>
   <party id="party2">
      <partyId>ABCBICXXX</partyId>
      <partyName>ABC Bank</partyName>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace")

,

 xdmp:document-insert("/openspaces/demo/msg-ex15-cd-request-amendment-confirmation.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="RequestAmendmentConfirmation" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.abcbank.com/message-Id">5765765gt6yg76</messageId>
      <sentBy partyIdScheme="http://www.abcbank.com/party-Id">ABCBICXXX</sentBy>
      <creationTimestamp>2002-12-03T04:27:00Z</creationTimestamp>
   </header>
   <amendment>
      <trade>
         <tradeHeader>
            <partyTradeIdentifier>
               <partyReference href="party1"/>
               <tradeId tradeIdScheme="http://www.xyzbank.com/cd-trade-id">xyz1234</tradeId>
            </partyTradeIdentifier>
            <partyTradeIdentifier>
               <partyReference href="party2"/>
               <tradeId tradeIdScheme="http://www.abcbank.com/cd-trade-id">abc1234</tradeId>
            </partyTradeIdentifier>
            <tradeDate>2002-12-03Z</tradeDate>
         </tradeHeader>
         <creditDefaultSwap>
            <generalTerms>
               <effectiveDate>
                  <unadjustedDate>2002-12-04Z</unadjustedDate>
               </effectiveDate>
               <scheduledTerminationDate>
                  <adjustableDate>
                     <unadjustedDate>2007-09-06Z</unadjustedDate>
                  </adjustableDate>
               </scheduledTerminationDate>
               <sellerPartyReference href="party2"/>
               <buyerPartyReference href="party1"/>
               <referenceInformation>
                  <referenceEntity id="referenceEntity">
                     <entityName>Tenet Healthcare Corporation</entityName>
                     <entityId entityIdScheme="http://www.fpml.org/spec/2003/entity-id-RED-1-0">8G836J</entityId>
                  </referenceEntity>
                  <referenceObligation>
                     <bond>
                        <instrumentId instrumentIdScheme="http://www.fpml.org/spec/2002/instrument-id-CUSIP-1-0">88033GAT7</instrumentId>
                        <couponRate>0.06</couponRate>
                        <maturity>2011-12-01</maturity>
                     </bond>
                     <primaryObligorReference href="referenceEntity"/>
                  </referenceObligation>
               </referenceInformation>
            </generalTerms>
            <feeLeg>
               <periodicPayment>
                  <paymentFrequency>
                     <periodMultiplier>3</periodMultiplier>
                     <period>M</period>
                  </paymentFrequency>
                  <firstPaymentDate>2003-03-06Z</firstPaymentDate>
                  <rollConvention>6</rollConvention>
                  <fixedAmountCalculation>
                     <fixedRate>0.01</fixedRate>
                  </fixedAmountCalculation>
               </periodicPayment>
            </feeLeg>
            <protectionTerms>
               <calculationAmount>
                  <currency>USD</currency>
                  <amount>5000000</amount>
               </calculationAmount>
               <creditEvents>
                  <restructuring/>
               </creditEvents>
            </protectionTerms>
         </creditDefaultSwap>
         <documentation>
            <masterConfirmation>
               <masterConfirmationType>ISDA2003CreditNorthAmerican</masterConfirmationType>
               <masterConfirmationDate>2003-06-06Z</masterConfirmationDate>
            </masterConfirmation>
         </documentation>
      </trade>
      <amendmentTradeDate>2004-04-28Z</amendmentTradeDate>
      <amendmentEffectiveDate>2004-04-30Z</amendmentEffectiveDate>
   </amendment>
   <party id="party1">
      <partyId>XYZBICXXX</partyId>
      <partyName>XYZ Bank</partyName>
   </party>
   <party id="party2">
      <partyId>ABCBICXXX</partyId>
      <partyName>ABC Bank</partyName>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex23-cds-long-form-allocation-amended.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="AllocationAmended" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <conversationId conversationIdScheme="http://www.exampleParty.com/conversationId/OTC">CHASE/CALPERS5678</conversationId>
      <messageId messageIdScheme="http://www.exampleParty.com/messageId/OTC">CHASE/CALPERS5678002</messageId>
      <sentBy partyIdScheme="http://www.exampleParty.com/partyId">CHASE</sentBy>
      <sendTo partyIdScheme="http://www.exampleParty.com/partyId">CALPERS</sendTo>
      <copyTo partyIdScheme="http://www.exampleParty.com/partyId">BGI</copyTo>
      <creationTimestamp>2002-12-03T09:57:00Z</creationTimestamp>
   </header>
   <amendment>
      <originalTradeIdentifier xsi:type="AllocationTradeIdentifier">
         <partyReference href="party3"/>
         <tradeId tradeIdScheme="http://www.swapswire.com/spec/2001/trade-id-1-0">20001</tradeId>
         <blockTradeId>
            <partyReference href="party2"/>
            <tradeId tradeIdScheme="http://abc.com">20000</tradeId>
         </blockTradeId>
      </originalTradeIdentifier>
      <amendedTrade>
         <tradeHeader>
            <partyTradeIdentifier xsi:type="AllocationTradeIdentifier">
               <partyReference href="party3"/>
               <tradeId tradeIdScheme="http://www.swapswire.com/spec/2001/trade-id-1-0">20010</tradeId>
               <blockTradeId>
                  <partyReference href="party2"/>
                  <tradeId tradeIdScheme="http://abc.com">20000</tradeId>
               </blockTradeId>
            </partyTradeIdentifier>
            <tradeDate>2002-12-03Z</tradeDate>
         </tradeHeader>
         <creditDefaultSwap>
            <generalTerms>
               <effectiveDate>
                  <unadjustedDate>2002-12-04Z</unadjustedDate>
                  <dateAdjustments>
                     <businessDayConvention>NONE</businessDayConvention>
                  </dateAdjustments>
               </effectiveDate>
               <scheduledTerminationDate>
                  <adjustableDate>
                     <unadjustedDate>2007-09-06Z</unadjustedDate>
                     <dateAdjustments>
                        <businessDayConvention>MODFOLLOWING</businessDayConvention>
                        <businessCenters>
                           <businessCenter>GBLO</businessCenter>
                           <businessCenter>USNY</businessCenter>
                        </businessCenters>
                     </dateAdjustments>
                  </adjustableDate>
               </scheduledTerminationDate>
               <sellerPartyReference href="party3"/>
               <buyerPartyReference href="party2"/>
               <dateAdjustments>
                  <businessDayConvention>MODFOLLOWING</businessDayConvention>
                  <businessCenters>
                     <businessCenter>GBLO</businessCenter>
                     <businessCenter>USNY</businessCenter>
                  </businessCenters>
               </dateAdjustments>
               <referenceInformation>
                  <referenceEntity id="referenceEntity2">
                     <entityName>Agrium Inc.</entityName>
                     <entityId entityIdScheme="http://www.fpml.org/spec/2003/entity-id-RED-1-0">008HA7</entityId>
                  </referenceEntity>
                  <referenceObligation>
                     <bond>
                        <instrumentId instrumentIdScheme="http://www.fpml.org/spec/2002/instrument-id-CUSIP-1-0">008916AB4</instrumentId>
                        <couponRate>0.077</couponRate>
                        <maturity>2017-02-01</maturity>
                     </bond>
                     <primaryObligorReference href="referenceEntity2"/>
                  </referenceObligation>
                  <referencePrice>1.0</referencePrice>
               </referenceInformation>
            </generalTerms>
            <feeLeg>
               <periodicPayment>
                  <paymentFrequency>
                     <periodMultiplier>3</periodMultiplier>
                     <period>M</period>
                  </paymentFrequency>
                  <firstPaymentDate>2003-03-06Z</firstPaymentDate>
                  <rollConvention>6</rollConvention>
                  <fixedAmountCalculation>
                     <calculationAmount>
                        <currency>USD</currency>
                        <amount>60000000.0</amount>
                     </calculationAmount>
                     <fixedRate>0.01</fixedRate>
                     <dayCountFraction>ACT/360</dayCountFraction>
                  </fixedAmountCalculation>
               </periodicPayment>
            </feeLeg>
            <protectionTerms>
               <calculationAmount>
                  <currency>USD</currency>
                  <amount>60000000.0</amount>
               </calculationAmount>
               <creditEvents>
                  <bankruptcy/>
                  <failureToPay>
                     <paymentRequirement>
                        <currency>USD</currency>
                        <amount>1500000.0</amount>
                     </paymentRequirement>
                  </failureToPay>
                  <restructuring>
                     <restructuringType>ModR</restructuringType>
                  </restructuring>
                  <defaultRequirement>
                     <currency>USD</currency>
                     <amount>15000000.0</amount>
                  </defaultRequirement>
                  <creditEventNotice>
                     <notifyingParty>
                        <buyerPartyReference href="party2"/>
                        <sellerPartyReference href="party3"/>
                     </notifyingParty>
                     <publiclyAvailableInformation>
                        <standardPublicSources/>
                        <specifiedNumber>2</specifiedNumber>
                     </publiclyAvailableInformation>
                  </creditEventNotice>
               </creditEvents>
               <obligations>
                  <category>BorrowedMoney</category>
               </obligations>
            </protectionTerms>
            <physicalSettlementTerms>
               <settlementCurrency>USD</settlementCurrency>
               <physicalSettlementPeriod>
                  <maximumBusinessDays>30</maximumBusinessDays>
               </physicalSettlementPeriod>
               <deliverableObligations>
                  <accruedInterest>false</accruedInterest>
                  <category>BondOrLoan</category>
                  <notSubordinated/>
                  <specifiedCurrency/>
                  <notContingent/>
                  <assignableLoan/>
                  <consentRequiredLoan/>
                  <transferable/>
                  <maximumMaturity>
                     <periodMultiplier>30</periodMultiplier>
                     <period>Y</period>
                  </maximumMaturity>
                  <notBearer/>
               </deliverableObligations>
               <escrow>true</escrow>
            </physicalSettlementTerms>
         </creditDefaultSwap>
         <otherPartyPayment>
            <payerPartyReference href="party3"/>
            <receiverPartyReference href="party2"/>
            <paymentAmount>
               <currency>USD</currency>
               <amount>10000</amount>
            </paymentAmount>
            <paymentDate>
               <unadjustedDate>2003-03-06Z</unadjustedDate>
               <dateAdjustments>
                  <businessDayConvention>FOLLOWING</businessDayConvention>
                  <businessCenters>
                     <businessCenter>GBLO</businessCenter>
                     <businessCenter>USNY</businessCenter>
                  </businessCenters>
               </dateAdjustments>
            </paymentDate>
            <paymentType>Premium</paymentType>
         </otherPartyPayment>
         <calculationAgent>
            <calculationAgentPartyReference href="party2"/>
         </calculationAgent>
         <calculationAgentBusinessCenter>USNY</calculationAgentBusinessCenter>
         <collateral>
            <independentAmount>
               <payerPartyReference href="party3"/>
               <receiverPartyReference href="party2"/>
               <paymentDetail>
                  <paymentAmount>
                     <currency>USD</currency>
                     <amount>3000000</amount>
                  </paymentAmount>
               </paymentDetail>
            </independentAmount>
         </collateral>
         <documentation>
            <masterAgreement>
               <masterAgreementType>ISDA1992</masterAgreementType>
            </masterAgreement>
            <contractualDefinitions>ISDA1999Credit</contractualDefinitions>
            <contractualSupplement>ISDA1999CreditRestructuring</contractualSupplement>
            <contractualSupplement>ISDA1999CreditSuccessorAndCreditEvents</contractualSupplement>
            <contractualSupplement>ISDA1999CreditConvertibleExchangeableAccretingObligations</contractualSupplement>
         </documentation>
      </amendedTrade>
   </amendment>
   <party id="party1">
      <partyId partyIdScheme="http://www.fpml.org/ext/iso9362">BGIUS42</partyId>
      <partyName>Barclays Global Investors</partyName>
      <account id="ACC1">
         <accountId>bgcf22j</accountId>
         <accountName>Barclays Global Investors 2</accountName>
      </account>
   </party>
   <party id="party2">
      <partyId partyIdScheme="http://www.fpml.org/ext/iso9362">CHASUS33</partyId>
      <partyName>Chase Global Risk Management</partyName>
      <account id="ACC0">
         <accountId accountIdScheme="http://www.chase.com/bondifre">5462346</accountId>
         <accountName>LDF Main Fund</accountName>
      </account>
   </party>
   <party id="party3">
      <partyId partyIdScheme="http://www.fpml.org/ext/iso9362">CALPERS</partyId>
      <partyName>California Public Employees' Retirement System</partyName>
      <account id="ACC2">
         <accountId>cvgh44h</accountId>
         <accountName>CALPERS A/C 1</accountName>
      </account>
      <account id="ACC3">
         <accountId>cvgh45h</accountId>
         <accountName>CALPERS Account 23</accountName>
      </account>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex26-alleged-novation.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="NovationAlleged" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <conversationId conversationIdScheme="http://www.xyzbank.com/cd-trade-id/conversationId/OTC">NovationCDS_ABC_XYZ</conversationId>
      <messageId messageIdScheme="http://www.xyzbank.com/cd-trade-id/messageId/OTC">NovationCDS_ABC_XYZ_msg0001</messageId>
      <sentBy partyIdScheme="http://www.xyzbank.com/cd-trade-id/partyId">XYZ Bank</sentBy>
      <creationTimestamp>2006-01-01T09:01:00+05:00</creationTimestamp>
   </header>
   <novation>
      <oldTransactionReference>
         <partyTradeIdentifier>
            <partyReference href="party2"/>
            <tradeId tradeIdScheme="http://www.abcbank.com/tradeId/OTC">TradeABC0001</tradeId>
         </partyTradeIdentifier>
      </oldTransactionReference>
      <newTransactionReference>
         <partyTradeIdentifier>
            <partyReference href="party1"/>
            <tradeId tradeIdScheme="http://www.xyzbank.com/tradeId/OTC">TradeXYZ0001</tradeId>
         </partyTradeIdentifier>
      </newTransactionReference>
      <transferor href="party2"/>
      <transferee href="party1"/>
      <remainingParty href="party3"/>
      <novationDate>2006-01-08+05:00</novationDate>
      <novatedAmount>
         <currency>USD</currency>
         <amount>5000000.00</amount>
      </novatedAmount>
      <firstPeriodStartDate href="party3">2006-01-15+05:00</firstPeriodStartDate>
      <creditDerivativesNotices>
         <creditEvent>true</creditEvent>
         <publiclyAvailableInformation>false</publiclyAvailableInformation>
         <physicalSettlement>true</physicalSettlement>
      </creditDerivativesNotices>
      <contractualDefinitions>ISDA2003Credit</contractualDefinitions>
      <payment>
         <payerPartyReference href="party1"/>
         <receiverPartyReference href="party2"/>
         <paymentAmount>
            <currency>USD</currency>
            <amount>50000</amount>
         </paymentAmount>
      </payment>
   </novation>
   <party id="party1">
      <partyId>XYZ Bank</partyId>
   </party>
   <party id="party2">
      <partyId>ABC Bank</partyId>
   </party>
   <party id="party3">
      <partyId>RemainingParty Firm</partyId>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex27-request-consent-novation.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="NovationConsentRequest" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <conversationId conversationIdScheme="http://www.xyzbank.com/cd-trade-id/conversationId/OTC">NovationCDS_ABC_XYZ</conversationId>
      <messageId messageIdScheme="http://www.xyzbank.com/cd-trade-id/messageId/OTC">NovationCDS_ABC_XYZ_msg0001</messageId>
      <sentBy partyIdScheme="http://www.xyzbank.com/cd-trade-id/partyId">XYZ Bank</sentBy>
      <creationTimestamp>2006-01-01T09:01:00+05:00</creationTimestamp>
   </header>
   <novation>
      <oldTransaction>
         <tradeHeader>
            <partyTradeIdentifier>
               <partyReference href="party1"/>
               <tradeId tradeIdScheme="http://www.xyzbank.com/tradeId/OTC">TradeXYZ0001</tradeId>
            </partyTradeIdentifier>
            <partyTradeIdentifier>
               <partyReference href="party2"/>
               <tradeId tradeIdScheme="http://www.abcbank.com/tradeId/OTC">TradeABC0001</tradeId>
            </partyTradeIdentifier>
            <tradeDate>2002-12-02+05:00</tradeDate>
         </tradeHeader>
         <creditDefaultSwap>
            <generalTerms>
               <effectiveDate>
                  <unadjustedDate>2002-12-03+05:00</unadjustedDate>
               </effectiveDate>
               <scheduledTerminationDate>
                  <adjustableDate>
                     <unadjustedDate>2008-01-15+05:00</unadjustedDate>
                  </adjustableDate>
               </scheduledTerminationDate>
               <sellerPartyReference href="party2"/>
               <buyerPartyReference href="party1"/>
               <referenceInformation>
                  <referenceEntity id="referenceEntity">
                     <entityName>Abbey National PLC</entityName>
                     <entityId entityIdScheme="http://www.fpml.org/spec/2003/entity-id-RED-1-0">002BB2</entityId>
                  </referenceEntity>
                  <referenceObligation>
                     <bond>
                        <instrumentId instrumentIdScheme="http://www.fpml.org/spec/2002/instrument-id-ISIN-1-0">XS009316049</instrumentId>
                        <couponRate>0.05375</couponRate>
                        <maturity>2009-12-30</maturity>
                     </bond>
                     <primaryObligor>
                        <entityName>Abbey National Treasury Services plc</entityName>
                        <entityId entityIdScheme="http://www.fpml.org/spec/2003/entity-id-RED-1-0">GLEECI</entityId>
                     </primaryObligor>
                     <guarantorReference href="referenceEntity"/>
                  </referenceObligation>
               </referenceInformation>
            </generalTerms>
            <feeLeg>
               <periodicPayment>
                  <paymentFrequency>
                     <periodMultiplier>3</periodMultiplier>
                     <period>M</period>
                  </paymentFrequency>
                  <firstPaymentDate>2003-01-15+05:00</firstPaymentDate>
                  <rollConvention>15</rollConvention>
                  <fixedAmountCalculation>
                     <fixedRate>0.009</fixedRate>
                  </fixedAmountCalculation>
               </periodicPayment>
            </feeLeg>
            <protectionTerms>
               <calculationAmount>
                  <currency>EUR</currency>
                  <amount>5000000</amount>
               </calculationAmount>
            </protectionTerms>
         </creditDefaultSwap>
         <documentation>
            <masterConfirmation>
               <masterConfirmationType>ISDA2003CreditEuropean</masterConfirmationType>
               <masterConfirmationDate>2003-06-06+05:00</masterConfirmationDate>
            </masterConfirmation>
         </documentation>
      </oldTransaction>
      <newTransactionReference>
         <partyTradeIdentifier>
            <partyReference href="party1"/>
            <tradeId tradeIdScheme="http://www.xyzbank.com/tradeId/OTC">TradeXYZ0001</tradeId>
         </partyTradeIdentifier>
      </newTransactionReference>
      <transferor href="party2"/>
      <transferee href="party3"/>
      <remainingParty href="party1"/>
      <novationDate>2006-01-08+05:00</novationDate>
      <novatedAmount>
         <currency>EUR</currency>
         <amount>5000000</amount>
      </novatedAmount>
      <firstPeriodStartDate href="party2">2006-01-15+05:00</firstPeriodStartDate>
      <creditDerivativesNotices>
         <creditEvent>true</creditEvent>
         <publiclyAvailableInformation>false</publiclyAvailableInformation>
         <physicalSettlement>true</physicalSettlement>
      </creditDerivativesNotices>
      <contractualDefinitions>ISDA2003Credit</contractualDefinitions>
   </novation>
   <party id="party1">
      <partyId>XYZBIC345</partyId>
   </party>
   <party id="party2">
      <partyId>ABCBIC123</partyId>
   </party>
   <party id="party3">
      <partyId>NBKXXX342</partyId>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex28-cashflow-assertion-most-simple.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="TradeCashflowsAsserted" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.example.com/messageId">CEN/2004/01/05/15-38</messageId>
      <sentBy>ABC</sentBy>
      <sendTo>DEF</sendTo>
      <creationTimestamp>2005-01-05T15:38:00Z</creationTimestamp>
   </header>
   <asOfDate>2005-01-05T15:00:00Z</asOfDate>
   <tradeCashflowsId tradeCashflowsIdScheme="http://www.abc.com/tradeCashflowsId">tradeCashflowsABC001</tradeCashflowsId>
   <tradeIdentifyingItems>
      <partyTradeIdentifier>
         <partyReference href="party1"/>
         <tradeId tradeIdScheme="http://www.abc.com/tradeId">trade1abcxxx</tradeId>
      </partyTradeIdentifier>
      <partyTradeIdentifier>
         <partyReference href="party2"/>
         <tradeId tradeIdScheme="http://www.def.com/tradeId">123cds</tradeId>
      </partyTradeIdentifier>
   </tradeIdentifyingItems>
   <adjustedPaymentDate>2005-01-31Z</adjustedPaymentDate>
   <payment>
      <identifier paymentIdScheme="http://www.centralservice.com/netPaymentId">netPaymentABCDEF001</identifier>
      <payerPartyReference href="party1"/>
      <receiverPartyReference href="party2"/>
      <paymentAmount>
         <currency>EUR</currency>
         <amount>200000</amount>
      </paymentAmount>
   </payment>
   <party id="party1">
      <partyId>ABCBank001</partyId>
   </party>
   <party id="party2">
      <partyId>DEFBank001</partyId>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex30-cashflow-assertion-ird.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="TradeCashflowsAsserted" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.example.com/messageId">CEN/2004/01/05/15-38</messageId>
      <sentBy>ABC</sentBy>
      <sendTo>DEF</sendTo>
      <creationTimestamp>2005-08-01T15:38:00Z</creationTimestamp>
   </header>
   <asOfDate>2005-08-01T15:38:00Z</asOfDate>
   <tradeCashflowsId tradeCashflowsIdScheme="http://www.abc.com/tradeCashflowsId">tradeCashflowsABC001</tradeCashflowsId>
   <tradeIdentifyingItems>
      <partyTradeIdentifier>
         <partyReference href="party1"/>
         <tradeId tradeIdScheme="http://www.abc.com/tradeId">LSSS0052O0130000000</tradeId>
      </partyTradeIdentifier>
      <tradeDetails>
         <tradeDate>2000-05-17Z</tradeDate>
         <effectiveDate>
            <unadjustedDate>2000-05-19Z</unadjustedDate>
         </effectiveDate>
         <terminationDate>
            <unadjustedDate>2009-05-19Z</unadjustedDate>
         </terminationDate>
         <productType productTypeScheme="http://www.fpml.org/coding-scheme/product-type-simple-1-0">InterestRateSwap</productType>
         <underlyer id="SEK-STIBOR-SIDE">
            <floatingRate>
               <floatingRateIndex>SEK-STIBOR-SIDE</floatingRateIndex>
               <indexTenor>
                  <periodMultiplier>3</periodMultiplier>
                  <period>M</period>
               </indexTenor>
            </floatingRate>
         </underlyer>
         <underlyer id="FIXED">
            <fixedRate>
               <initialValue>0.06247500</initialValue>
            </fixedRate>
         </underlyer>
         <notional>
            <currency>SEK</currency>
            <amount>100000000.00</amount>
         </notional>
      </tradeDetails>
   </tradeIdentifyingItems>
   <adjustedPaymentDate>2005-08-19Z</adjustedPaymentDate>
   <payment>
      <identifier paymentIdScheme="http://www.abc.com/netPaymentId">7819930</identifier>
      <payerPartyReference href="party1"/>
      <receiverPartyReference href="party2"/>
      <paymentAmount>
         <currency>SEK</currency>
         <amount>5735166.67</amount>
      </paymentAmount>
      <calculationDetails>
         <grossCashflow>
            <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">20050519SEK00680811-1</cashflowId>
            <payerPartyReference href="party1"/>
            <receiverPartyReference href="party2"/>
            <cashflowAmount>
               <currency>SEK</currency>
               <amount>6247500.00</amount>
            </cashflowAmount>
            <cashflowType cashflowTypeScheme="http://www.fpml.org/coding-scheme/cashflow-type-1-0">Coupon</cashflowType>
         </grossCashflow>
         <calculationElements>
            <calculationPeriod>
               <adjustedStartDate>2004-05-19Z</adjustedStartDate>
               <adjustedEndDate>2005-05-19Z</adjustedEndDate>
               <numberOfDays>360</numberOfDays>
               <dayCountFraction>30/360</dayCountFraction>
            </calculationPeriod>
         </calculationElements>
      </calculationDetails>
      <calculationDetails>
         <grossCashflow>
            <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">20050519SEK00680811-2</cashflowId>
            <payerPartyReference href="party2"/>
            <receiverPartyReference href="party1"/>
            <cashflowAmount>
               <currency>SEK</currency>
               <amount>512333.33</amount>
            </cashflowAmount>
            <cashflowType cashflowTypeScheme="http://www.fpml.org/coding-scheme/cashflow-type-1-0">Coupon</cashflowType>
         </grossCashflow>
         <observationElements id="observation-SEK-STIBOR-SIDE">
            <underlyerReference href="SEK-STIBOR-SIDE"/>
            <observationDate>2005-02-17Z</observationDate>
            <observedValue>
               <value>0.02120000</value>
            </observedValue>
         </observationElements>
         <calculationElements>
            <calculatedRate>
               <observationReference href="observation-SEK-STIBOR-SIDE"/>
               <calculatedValue>0.02120000</calculatedValue>
               <spread>0</spread>
            </calculatedRate>
            <calculationPeriod>
               <adjustedStartDate>2005-02-22Z</adjustedStartDate>
               <adjustedEndDate>2005-05-19Z</adjustedEndDate>
               <numberOfDays>87</numberOfDays>
               <dayCountFraction>ACT/360</dayCountFraction>
               <dayCountYearFraction>0.2417</dayCountYearFraction>
            </calculationPeriod>
         </calculationElements>
      </calculationDetails>
   </payment>
   <party id="party1">
      <partyId>ABCBank001</partyId>
   </party>
   <party id="party2">
      <partyId>DEFBank001</partyId>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex35-cashflow-assertion-cds-Coupon.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="TradeCashflowsAsserted" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.example.com/messageId">CEN/2004/01/05/15-38</messageId>
      <sentBy>ABC</sentBy>
      <sendTo>DEF</sendTo>
      <creationTimestamp>2005-06-21T15:00:00Z</creationTimestamp>
   </header>
   <asOfDate>2005-06-21T15:00:00Z</asOfDate>
   <tradeCashflowsId tradeCashflowsIdScheme="http://www.abc.com/tradeCashflowsId">tradeCashflowsABC001</tradeCashflowsId>
   <tradeIdentifyingItems>
      <partyTradeIdentifier>
         <partyReference href="party1"/>
         <tradeId tradeIdScheme="http://www.abc.com/tradeId">SDB0494701620</tradeId>
      </partyTradeIdentifier>
      <tradeDetails>
         <tradeDate>2005-02-28Z</tradeDate>
         <effectiveDate>
            <unadjustedDate>2005-03-01Z</unadjustedDate>
         </effectiveDate>
         <terminationDate>
            <unadjustedDate>2009-12-20Z</unadjustedDate>
         </terminationDate>
         <productType productTypeScheme="http://www.fpml.org/coding-scheme/product-type-simple-1-0">CreditDefaultSwap</productType>
         <underlyer id="_018A99">
            <referenceEntity>
               <entityId entityIdScheme="http://www.fpml.org/spec/2003/entity-id-RED-1-0">018A99</entityId>
            </referenceEntity>
         </underlyer>
         <underlyer id="FIXED">
            <fixedRate>
               <initialValue>0.04</initialValue>
            </fixedRate>
         </underlyer>
         <notional>
            <currency>USD</currency>
            <amount>2000000.00</amount>
         </notional>
      </tradeDetails>
   </tradeIdentifyingItems>
   <adjustedPaymentDate>2005-09-20Z</adjustedPaymentDate>
   <payment>
      <identifier paymentIdScheme="http://www.abc.com/netPaymentId">8410363</identifier>
      <payerPartyReference href="party2"/>
      <receiverPartyReference href="party1"/>
      <paymentAmount>
         <currency>USD</currency>
         <amount>20444.44</amount>
      </paymentAmount>
      <calculationDetails>
         <grossCashflow>
            <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">_20050920USD76188934</cashflowId>
            <payerPartyReference href="party2"/>
            <receiverPartyReference href="party1"/>
            <cashflowAmount>
               <currency>USD</currency>
               <amount>20444.44</amount>
            </cashflowAmount>
            <cashflowType>Coupon</cashflowType>
         </grossCashflow>
         <calculationElements>
            <calculationPeriod>
               <adjustedStartDate>2005-06-20Z</adjustedStartDate>
               <adjustedEndDate>2005-09-20Z</adjustedEndDate>
               <numberOfDays>92</numberOfDays>
               <dayCountFraction>ACT/360</dayCountFraction>
               <dayCountYearFraction>0.2555</dayCountYearFraction>
            </calculationPeriod>
         </calculationElements>
      </calculationDetails>
   </payment>
   <party id="party1">
      <partyId>ABCBank001</partyId>
   </party>
   <party id="party2">
      <partyId>DEFBank001</partyId>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex38-cashflow-match-result-cds2-02.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="TradeCashflowsMatchResult" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.example.com/messageId">CEN/2004/01/05/15-39</messageId>
      <inReplyTo messageIdScheme="http://www.example.com/messageId">CEN/2004/01/05/15-38</inReplyTo>
      <sentBy>DEF</sentBy>
      <sendTo>ABC</sendTo>
      <creationTimestamp>2005-02-28T16:00:00Z</creationTimestamp>
   </header>
   <status tradeCashflowsStatusScheme="http://www.fpml.org/coding-scheme/trade-cashflows-status-1-0">Mismatched</status>
   <assertedCashflow>
      <tradeCashflowsId tradeCashflowsIdScheme="http://www.abc.com/tradeCashflowsId">8410363</tradeCashflowsId>
      <tradeIdentifyingItems>
         <partyTradeIdentifier>
            <partyReference href="party1"/>
            <tradeId tradeIdScheme="http://www.abc.com/tradeId">SDB0494701620</tradeId>
         </partyTradeIdentifier>
         <tradeDetails>
            <tradeDate>2005-02-28Z</tradeDate>
            <effectiveDate>
               <unadjustedDate>2005-03-01Z</unadjustedDate>
            </effectiveDate>
            <terminationDate>
               <unadjustedDate>2009-12-20Z</unadjustedDate>
            </terminationDate>
            <underlyer>
               <fixedRate>
                  <initialValue>0.0015</initialValue>
               </fixedRate>
            </underlyer>
            <underlyer>
               <referenceEntity>
                  <entityName>Any Corp.</entityName>
               </referenceEntity>
            </underlyer>
            <notional>
               <currency>USD</currency>
               <amount>2000000.00</amount>
            </notional>
         </tradeDetails>
      </tradeIdentifyingItems>
      <adjustedPaymentDate>2005-03-20Z</adjustedPaymentDate>
      <payment>
         <identifier paymentIdScheme="www.abc.com/netPaymentid">8410363</identifier>
         <payerPartyReference href="party2"/>
         <receiverPartyReference href="party1"/>
         <paymentAmount>
            <currency>USD</currency>
            <amount>20222.22</amount>
         </paymentAmount>
      </payment>
   </assertedCashflow>
   <proposedMatch>
      <tradeCashflowsId tradeCashflowsIdScheme="http://www.def.com/tradeCashflowsId">8574633349</tradeCashflowsId>
      <tradeIdentifyingItems>
         <partyTradeIdentifier>
            <partyReference href="party2"/>
            <tradeId tradeIdScheme="http://www.def.com/tradeId">JKL0494701620</tradeId>
         </partyTradeIdentifier>
         <tradeDetails>
            <tradeDate>2005-02-28Z</tradeDate>
            <effectiveDate>
               <unadjustedDate>2005-03-01Z</unadjustedDate>
            </effectiveDate>
            <terminationDate>
               <unadjustedDate>2009-12-20Z</unadjustedDate>
            </terminationDate>
            <underlyer>
               <fixedRate>
                  <initialValue>0.0015</initialValue>
               </fixedRate>
            </underlyer>
            <underlyer>
               <referenceEntity>
                  <entityName>Any Corp.</entityName>
               </referenceEntity>
            </underlyer>
            <notional>
               <currency>USD</currency>
               <amount>2000000.00</amount>
            </notional>
         </tradeDetails>
      </tradeIdentifyingItems>
      <adjustedPaymentDate>2005-03-20Z</adjustedPaymentDate>
      <payment>
         <identifier paymentIdScheme="www.abc.com/netPaymentid">8410363</identifier>
         <payerPartyReference href="party2"/>
         <receiverPartyReference href="party1"/>
         <paymentAmount>
            <currency>USD</currency>
            <amount>21222.22</amount>
         </paymentAmount>
      </payment>
      <matchId matchIdScheme="www.def.com/matchId">345678</matchId>
      <difference>
         <differenceType>Value</differenceType>
         <differenceSeverity>Error</differenceSeverity>
         <element>amount</element>
         <basePath>/FpML/payment/paymentAmount/amount</basePath>
         <baseValue>20222.22</baseValue>
         <otherPath>/FpML/proposedMatch/payment/paymentAmount/amount</otherPath>
         <otherValue>21222.22</otherValue>
         <message>Value [20222.22] in ABCBank001 is [21222.22] in DEFBank001.</message>
      </difference>
   </proposedMatch>
   <party id="party1">
      <partyId>ABCBank001</partyId>
   </party>
   <party id="party2">
      <partyId>DEFBank001</partyId>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex40-cashflow-assertion-eqs-InterestReset.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="TradeCashflowsAsserted" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.example.com/messageId">CEN/2004/01/05/15-38</messageId>
      <sentBy>ABC</sentBy>
      <sendTo>DEF</sendTo>
      <creationTimestamp>2004-03-30T15:00:00Z</creationTimestamp>
   </header>
   <asOfDate>2004-03-30T15:00:00Z</asOfDate>
   <tradeCashflowsId tradeCashflowsIdScheme="http://www.abc.com/tradeCashflowsId">tradeCashflowsABC001</tradeCashflowsId>
   <tradeIdentifyingItems>
      <partyTradeIdentifier>
         <partyReference href="party1"/>
         <tradeId tradeIdScheme="http://www.abc.com/tradeId/">EH40N4000000100</tradeId>
      </partyTradeIdentifier>
      <tradeDetails>
         <tradeDate>2004-03-18Z</tradeDate>
         <effectiveDate>
            <unadjustedDate>2004-03-25Z</unadjustedDate>
         </effectiveDate>
         <terminationDate>
            <unadjustedDate>2009-03-25Z</unadjustedDate>
         </terminationDate>
         <productType productTypeScheme="http://www.fpml.org/coding-scheme/product-type-simple-1-0">TotalReturnSwap</productType>
         <underlyer id="VJBK.NS">
            <equity>
               <instrumentId instrumentIdScheme="http://www.fpml.org/spec/2003/instrument-id-Reuters-RIC-1-0">VJBK.NS</instrumentId>
            </equity>
         </underlyer>
         <underlyer id="USD-LIBOR-BBA">
            <floatingRate>
               <floatingRateIndex>USD-LIBOR-BBA</floatingRateIndex>
               <indexTenor>
                  <periodMultiplier>1</periodMultiplier>
                  <period>M</period>
               </indexTenor>
            </floatingRate>
         </underlyer>
         <notional>
            <currency>USD</currency>
            <amount>744771.7416</amount>
         </notional>
      </tradeDetails>
   </tradeIdentifyingItems>
   <adjustedPaymentDate>2004-04-01Z</adjustedPaymentDate>
   <payment>
      <identifier paymentIdScheme="http://www.abc.com/netPaymentId">PS0HV5XYM-D34Q-00NS20040401USD</identifier>
      <payerPartyReference href="party2"/>
      <receiverPartyReference href="party1"/>
      <paymentAmount>
         <currency>USD</currency>
         <amount>215.78</amount>
      </paymentAmount>
      <calculationDetails>
         <grossCashflow>
            <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">PS0HV5XYM-D34Q-00NS20040401USD-1</cashflowId>
            <payerPartyReference href="party2"/>
            <receiverPartyReference href="party1"/>
            <cashflowAmount>
               <currency>USD</currency>
               <amount>215.78</amount>
            </cashflowAmount>
            <cashflowType>InterestReturn</cashflowType>
         </grossCashflow>
         <observationElements id="observation_USD-LIBOR-BBA">
            <underlyerReference href="USD-LIBOR-BBA"/>
            <observationDate>2004-03-25Z</observationDate>
            <observedValue>
               <value>0.010900</value>
            </observedValue>
         </observationElements>
         <calculationElements>
            <notional>
               <currency>USD</currency>
               <amount>744771.7416</amount>
            </notional>
            <calculatedRate>
               <observationReference href="observation_USD-LIBOR-BBA"/>
               <calculatedValue>0.014900</calculatedValue>
               <spread>0.0040</spread>
            </calculatedRate>
            <calculationPeriod>
               <adjustedStartDate>2004-03-25Z</adjustedStartDate>
               <adjustedEndDate>2004-04-01Z</adjustedEndDate>
               <numberOfDays>7</numberOfDays>
               <dayCountFraction>ACT/360</dayCountFraction>
               <dayCountYearFraction>0.01944</dayCountYearFraction>
            </calculationPeriod>
         </calculationElements>
      </calculationDetails>
   </payment>
   <party id="party1">
      <partyId>ABCBank001</partyId>
   </party>
   <party id="party2">
      <partyId>DEFBank001</partyId>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex44-cashflow-match-result-eqs-PartialTermination-01.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="TradeCashflowsMatchResult" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.example.com/messageId">CEN/2004/01/05/15-38</messageId>
      <inReplyTo messageIdScheme="http://www.example.com/messageId">CEN/2004/01/05/15-39</inReplyTo>
      <sentBy>TYUMATCHING</sentBy>
      <sendTo>ABC</sendTo>
      <creationTimestamp>2005-11-28T15:00:00Z</creationTimestamp>
   </header>
   <status tradeCashflowsStatusScheme="http://www.fpml.org/coding-scheme/trade-cashflows-status-1-0">Matched</status>
   <assertedCashflow>
      <asOfDate>2005-11-28T15:00:00Z</asOfDate>
      <tradeCashflowsId tradeCashflowsIdScheme="http://www.abc.com/tradeCashflowsId">tradeCashflowsABC001</tradeCashflowsId>
   </assertedCashflow>
   <proposedMatch>
      <tradeCashflowsId tradeCashflowsIdScheme="http://www.def.com/tradeCashflowsId">tradeCashflowsDEF001</tradeCashflowsId>
      <matchId matchIdScheme="http://www.tyumatching.com/matchId">23453323</matchId>
   </proposedMatch>
   <party id="party1">
      <partyId>ABCBank001</partyId>
   </party>
   <party id="party2">
      <partyId>DEFBank001</partyId>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace")

,

 xdmp:document-insert("/openspaces/demo/msg-ex45-cashflow-match-result-eqs-PartialTermination-02.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="TradeCashflowsMatchResult" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.example.com/messageId">CEN/2004/01/05/15-38</messageId>
      <inReplyTo messageIdScheme="http://www.example.com/messageId">CEN/2004/01/05/15-39</inReplyTo>
      <sentBy>TYUMATCHING</sentBy>
      <sendTo>ABC</sendTo>
      <creationTimestamp>2005-11-28T15:00:00Z</creationTimestamp>
   </header>
   <status tradeCashflowsStatusScheme="http://www.fpml.org/coding-scheme/trade-cashflows-status-1-0">Mismatched</status>
   <assertedCashflow>
      <asOfDate>2005-11-28T15:00:00Z</asOfDate>
      <tradeCashflowsId tradeCashflowsIdScheme="http://www.abc.com/tradeCashflowsId">tradeCashflowsABC001</tradeCashflowsId>
   </assertedCashflow>
   <proposedMatch>
      <tradeCashflowsId tradeCashflowsIdScheme="http://www.def.com/tradeCashflowsId">tradeCashflowsDEF001</tradeCashflowsId>
      <tradeIdentifyingItems>
         <partyTradeIdentifier>
            <partyReference href="party2"/>
            <tradeId tradeIdScheme="http://www.abc.com/tradeId">GM50XV000000000</tradeId>
         </partyTradeIdentifier>
         <tradeDetails>
            <tradeDate>2005-07-12Z</tradeDate>
            <effectiveDate>
               <unadjustedDate>2005-07-15Z</unadjustedDate>
            </effectiveDate>
            <terminationDate>
               <unadjustedDate>2006-07-17Z</unadjustedDate>
            </terminationDate>
            <productType productTypeScheme="http://www.fpml.org/coding-scheme/product-type-simple-1-0">TotalReturnSwap</productType>
            <underlyer id="ASN.N-PROP">
               <equity>
                  <instrumentId instrumentIdScheme="http://www.fpml.org/spec/2003/instrument-id-Reuters-RIC-1-0">ASN.N</instrumentId>
               </equity>
            </underlyer>
            <underlyer id="USD-LIBOR-BBA-PROP">
               <floatingRate>
                  <floatingRateIndex>USD-LIBOR-BBA</floatingRateIndex>
                  <indexTenor>
                     <periodMultiplier>6</periodMultiplier>
                     <period>M</period>
                  </indexTenor>
               </floatingRate>
            </underlyer>
            <notional>
               <currency>USD</currency>
               <amount>264786.1956</amount>
            </notional>
         </tradeDetails>
      </tradeIdentifyingItems>
      <adjustedPaymentDate>2006-01-01Z</adjustedPaymentDate>
      <payment>
         <identifier paymentIdScheme="http://www.abc.com/netPaymentId">PS0IQOM4B-B3RJ-008U20051201USD</identifier>
         <payerPartyReference href="party2"/>
         <receiverPartyReference href="party1"/>
         <paymentAmount>
            <currency>USD</currency>
            <amount>4700.01</amount>
         </paymentAmount>
         <calculationDetails>
            <grossCashflow>
               <cashflowId cashflowIdScheme="http://www.def.com/cashflowId">YU1234-B3RJ-008U20051201USD-1</cashflowId>
               <payerPartyReference href="party2"/>
               <receiverPartyReference href="party1"/>
               <cashflowAmount>
                  <currency>USD</currency>
                  <amount>290.51</amount>
               </cashflowAmount>
               <cashflowType>PriceReturn</cashflowType>
            </grossCashflow>
            <observationElements id="observation_ASN.N_1-PROP">
               <underlyerReference href="ASN.N-PROP"/>
               <observationDate>2005-07-20Z</observationDate>
               <observedValue>
                  <value>40.9492</value>
                  <measureType>TransactedNetPrice</measureType>
                  <quoteUnits>Price</quoteUnits>
                  <currency>USD</currency>
               </observedValue>
            </observationElements>
            <observationElements id="observation_ASN.N_2-PROP">
               <underlyerReference href="ASN.N-PROP"/>
               <observationDate>2005-11-28Z</observationDate>
               <observedValue>
                  <value>42.6481</value>
                  <measureType>TransactedNetPrice</measureType>
                  <quoteUnits>Price</quoteUnits>
                  <currency>USD</currency>
               </observedValue>
            </observationElements>
            <calculationElements>
               <numberOfUnits>
                  <underlyerReference href="ASN.N-PROP"/>
                  <quantity>171</quantity>
               </numberOfUnits>
            </calculationElements>
         </calculationDetails>
         <calculationDetails>
            <grossCashflow>
               <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">PS0IQOM4B-B3RJ-008U20051201USD-2</cashflowId>
               <payerPartyReference href="party1"/>
               <receiverPartyReference href="party2"/>
               <cashflowAmount>
                  <currency>USD</currency>
                  <amount>77.20</amount>
               </cashflowAmount>
               <cashflowType>InterestReturn</cashflowType>
            </grossCashflow>
            <observationElements id="observation_USD-LIBOR-BBA-1-PROP">
               <underlyerReference href="USD-LIBOR-BBA-PROP"/>
               <observationDate>2005-07-20Z</observationDate>
               <observedValue>
                  <value>0.0365</value>
               </observedValue>
            </observationElements>
            <calculationElements>
               <notional>
                  <currency>USD</currency>
                  <amount>7002.31</amount>
               </notional>
               <calculatedRate>
                  <observationReference href="observation_USD-LIBOR-BBA-1-PROP"/>
                  <calculatedValue>0.0315</calculatedValue>
                  <spread>0.0050</spread>
               </calculatedRate>
               <calculationPeriod>
                  <adjustedStartDate>2005-07-25Z</adjustedStartDate>
                  <adjustedEndDate>2005-11-28Z</adjustedEndDate>
                  <numberOfDays>126</numberOfDays>
                  <dayCountFraction>ACT/360</dayCountFraction>
               </calculationPeriod>
            </calculationElements>
         </calculationDetails>
         <calculationDetails>
            <grossCashflow>
               <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">PS0IQOM4B-B3RJ-008U20051201USD-3</cashflowId>
               <payerPartyReference href="party1"/>
               <receiverPartyReference href="party2"/>
               <cashflowAmount>
                  <currency>USD</currency>
                  <amount>41.60</amount>
               </cashflowAmount>
               <cashflowType>PriceReturn</cashflowType>
            </grossCashflow>
            <observationElements id="observation_ASN.N_3-PROP">
               <underlyerReference href="ASN.N-PROP"/>
               <observationDate>2005-08-04Z</observationDate>
               <observedValue>
                  <value>42.6552</value>
                  <measureType>TransactedNetPrice</measureType>
                  <quoteUnits>Price</quoteUnits>
                  <currency>USD</currency>
               </observedValue>
            </observationElements>
            <observationElements id="observation_ASN.N_4-PROP">
               <underlyerReference href="ASN.N-PROP"/>
               <observationDate>2005-11-28Z</observationDate>
               <observedValue>
                  <value>42.6481</value>
                  <measureType>TransactedNetPrice</measureType>
                  <quoteUnits>Price</quoteUnits>
                  <currency>USD</currency>
               </observedValue>
            </observationElements>
            <calculationElements>
               <numberOfUnits>
                  <underlyerReference href="ASN.N-PROP"/>
                  <quantity>5859</quantity>
               </numberOfUnits>
            </calculationElements>
         </calculationDetails>
         <calculationDetails>
            <grossCashflow>
               <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">PS0IQOM4B-B3RJ-008U20051201USD-4</cashflowId>
               <payerPartyReference href="party1"/>
               <receiverPartyReference href="party2"/>
               <cashflowAmount>
                  <currency>USD</currency>
                  <amount>2524.51</amount>
               </cashflowAmount>
               <cashflowType cashflowTypeScheme="http://www.fpml.org/coding-scheme/cashflow-type-1-0">InterestReturn</cashflowType>
            </grossCashflow>
            <observationElements id="observation_USD-LIBOR-BBA-2-PROP">
               <underlyerReference href="USD-LIBOR-BBA-PROP"/>
               <observationDate>2005-08-04Z</observationDate>
               <observedValue>
                  <value>0.0374688</value>
               </observedValue>
            </observationElements>
            <calculationElements>
               <notional>
                  <currency>USD</currency>
                  <amount>249916.8</amount>
               </notional>
               <calculatedRate>
                  <observationReference href="observation_USD-LIBOR-BBA-2-PROP"/>
                  <calculatedValue>0.0324688</calculatedValue>
                  <spread>0.0050</spread>
               </calculatedRate>
               <calculationPeriod>
                  <adjustedStartDate>2005-08-08Z</adjustedStartDate>
                  <adjustedEndDate>2005-11-28Z</adjustedEndDate>
                  <numberOfDays>112</numberOfDays>
                  <dayCountFraction>ACT/360</dayCountFraction>
               </calculationPeriod>
            </calculationElements>
         </calculationDetails>
         <calculationDetails>
            <grossCashflow>
               <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">PS0IQOM4B-B3RJ-008U20051201USD-5</cashflowId>
               <payerPartyReference href="party2"/>
               <receiverPartyReference href="party1"/>
               <cashflowAmount>
                  <currency>USD</currency>
                  <amount>4166.25</amount>
               </cashflowAmount>
               <cashflowType>PriceReturn</cashflowType>
            </grossCashflow>
            <observationElements id="observation_ASN.N_5-PROP">
               <underlyerReference href="ASN.N-PROP"/>
               <observationDate>2005-10-24Z</observationDate>
               <observedValue>
                  <value>38.1097</value>
                  <measureType>TransactedNetPrice</measureType>
                  <quoteUnits>Price</quoteUnits>
                  <currency>USD</currency>
               </observedValue>
            </observationElements>
            <observationElements id="observation_ASN.N_6-PROP">
               <underlyerReference href="ASN.N-PROP"/>
               <observationDate>2005-11-28Z</observationDate>
               <observedValue>
                  <value>42.6481</value>
                  <measureType>TransactedNetPrice</measureType>
                  <quoteUnits>Price</quoteUnits>
                  <currency>USD</currency>
               </observedValue>
            </observationElements>
            <calculationElements>
               <numberOfUnits>
                  <underlyerReference href="ASN.N-PROP"/>
                  <quantity>918</quantity>
               </numberOfUnits>
            </calculationElements>
         </calculationDetails>
         <calculationDetails>
            <grossCashflow>
               <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">PS0IQOM4B-B3RJ-008U20051201USD-6</cashflowId>
               <payerPartyReference href="party1"/>
               <receiverPartyReference href="party2"/>
               <cashflowAmount>
                  <currency>USD</currency>
                  <amount>118.85</amount>
               </cashflowAmount>
               <cashflowType>InterestReturn</cashflowType>
            </grossCashflow>
            <observationElements id="observation_USD-LIBOR-BBA-3-PROP">
               <underlyerReference href="USD-LIBOR-BBA-PROP"/>
               <observationDate>2005-10-24Z</observationDate>
               <observedValue>
                  <value>0.0420625</value>
               </observedValue>
            </observationElements>
            <calculationElements>
               <notional>
                  <currency>USD</currency>
                  <amount>34984.7</amount>
               </notional>
               <calculatedRate>
                  <observationReference href="observation_USD-LIBOR-BBA-3-PROP"/>
                  <calculatedValue>0.0370625</calculatedValue>
                  <spread>0.0050</spread>
               </calculatedRate>
               <calculationPeriod>
                  <adjustedStartDate>2005-10-26Z</adjustedStartDate>
                  <adjustedEndDate>2005-11-28Z</adjustedEndDate>
                  <numberOfDays>33</numberOfDays>
                  <dayCountFraction>ACT/360</dayCountFraction>
                  <dayCountYearFraction>0.09167</dayCountYearFraction>
               </calculationPeriod>
            </calculationElements>
         </calculationDetails>
         <calculationDetails>
            <grossCashflow>
               <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">PS0IQOM4B-B3RJ-008U20051201USD-7</cashflowId>
               <payerPartyReference href="party2"/>
               <receiverPartyReference href="party1"/>
               <cashflowAmount>
                  <currency>USD</currency>
                  <amount>3005.01</amount>
               </cashflowAmount>
               <cashflowType cashflowTypeScheme="http://www.fpml.org/coding-scheme/cashflow-type-1-0">DividendReturn</cashflowType>
            </grossCashflow>
            <calculationElements>
               <numberOfUnits>
                  <underlyerReference href="ASN.N-PROP"/>
                  <quantity>6948</quantity>
               </numberOfUnits>
            </calculationElements>
         </calculationDetails>
      </payment>
      <matchId matchIdScheme="http://www.tyu.com/matchId">34558473</matchId>
      <difference>
         <differenceType>Value</differenceType>
         <differenceSeverity>Error</differenceSeverity>
         <element>amount</element>
         <basePath>/FpML/adjustedPaymentDate</basePath>
         <baseValue>2005-12-01</baseValue>
         <otherPath>/FpML/proposedMatch/adjustedPaymentDate</otherPath>
         <otherValue>2006-01-01</otherValue>
         <message>Value [20222.22] in ABCBank001 is [2006-01-01] in DEFBank001.</message>
      </difference>
   </proposedMatch>
   <party id="party1">
      <partyId>ABCBank001</partyId>
   </party>
   <party id="party2">
      <partyId>party2Bank001</partyId>
   </party>
<price>7</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace")

,

 xdmp:document-insert("/openspaces/demo/msg-ex47-cashflow-assertion-CompoundingSwap.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="TradeCashflowsAsserted" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.example.com/messageId">CEN/2004/01/05/15-38</messageId>
      <sentBy>ABC</sentBy>
      <sendTo>DEF</sendTo>
      <creationTimestamp>2005-11-01T15:38:00Z</creationTimestamp>
   </header>
   <asOfDate>2005-11-01T15:38:00Z</asOfDate>
   <tradeCashflowsId tradeCashflowsIdScheme="http://www.abc.com/tradeCashflowsId">tradeCashflowsABC001</tradeCashflowsId>
   <tradeIdentifyingItems>
      <partyTradeIdentifier>
         <partyReference href="party1"/>
         <tradeId tradeIdScheme="http://www.abc.com/tradeId">LTAA1702767187</tradeId>
      </partyTradeIdentifier>
      <tradeDetails>
         <tradeDate>1997-12-15Z</tradeDate>
         <effectiveDate>
            <unadjustedDate>1997-12-17Z</unadjustedDate>
         </effectiveDate>
         <terminationDate>
            <unadjustedDate>2005-12-17Z</unadjustedDate>
         </terminationDate>
         <productType productTypeScheme="http://www.fpml.org/coding-scheme/product-type-simple-1-0">InterestRateSwap</productType>
         <underlyer id="FIXED">
            <fixedRate>
               <initialValue>0.06158870</initialValue>
            </fixedRate>
         </underlyer>
         <underlyer id="USD-LIBOR-BBA">
            <floatingRate>
               <floatingRateIndex>USD-LIBOR-BBA</floatingRateIndex>
               <indexTenor>
                  <periodMultiplier>3</periodMultiplier>
                  <period>M</period>
               </indexTenor>
            </floatingRate>
         </underlyer>
         <notional>
            <currency>USD</currency>
            <amount>75000000.00</amount>
         </notional>
      </tradeDetails>
   </tradeIdentifyingItems>
   <adjustedPaymentDate>2005-06-17Z</adjustedPaymentDate>
   <payment>
      <identifier paymentIdScheme="http://www.abc.com/netPaymentId">9188548</identifier>
      <payerPartyReference href="party1"/>
      <receiverPartyReference href="party2"/>
      <paymentAmount>
         <currency>USD</currency>
         <amount>1256210.37</amount>
      </paymentAmount>
      <calculationDetails>
         <grossCashflow>
            <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">20050617USD76095013</cashflowId>
            <payerPartyReference href="party2"/>
            <receiverPartyReference href="party1"/>
            <cashflowAmount>
               <currency>USD</currency>
               <amount>1053365.88</amount>
            </cashflowAmount>
            <cashflowType cashflowTypeScheme="http://www.fpml.org/coding-scheme/cashflow-type-1-0">Coupon</cashflowType>
         </grossCashflow>
         <observationElements id="observation-USD-LIBOR-BBA_1">
            <underlyerReference href="USD-LIBOR-BBA"/>
            <observationDate>2004-12-15Z</observationDate>
            <observedValue>
               <value>0.02501250</value>
            </observedValue>
         </observationElements>
         <observationElements id="observation-USD-LIBOR-BBA_2">
            <underlyerReference href="USD-LIBOR-BBA"/>
            <observationDate>2005-03-15Z</observationDate>
            <observedValue>
               <value>0.03030000</value>
            </observedValue>
         </observationElements>
         <calculationElements>
            <calculatedRate id="calculated-USD-LIBOR-BBA_1">
               <observationReference href="observation-USD-LIBOR-BBA_1"/>
               <calculatedValue>0.02501250</calculatedValue>
               <spread>0</spread>
            </calculatedRate>
            <calculatedRate id="calculated-USD-LIBOR-BBA_2">
               <observationReference href="observation-USD-LIBOR-BBA_2"/>
               <calculatedValue>0.03030000</calculatedValue>
               <spread>0</spread>
            </calculatedRate>
            <calculationPeriod>
               <calculatedRateReference href="calculated-USD-LIBOR-BBA_1"/>
               <adjustedStartDate>2004-12-17Z</adjustedStartDate>
               <adjustedEndDate>2005-03-17Z</adjustedEndDate>
               <numberOfDays>90</numberOfDays>
               <dayCountFraction>ACT/360</dayCountFraction>
               <dayCountYearFraction>0.250</dayCountYearFraction>
               <compoundingMethod>Straight</compoundingMethod>
               <accruedAmount>468984.37</accruedAmount>
            </calculationPeriod>
            <calculationPeriod>
               <calculatedRateReference href="calculated-USD-LIBOR-BBA_2"/>
               <adjustedStartDate>2005-03-17Z</adjustedStartDate>
               <adjustedEndDate>2005-06-17Z</adjustedEndDate>
               <numberOfDays>92</numberOfDays>
               <dayCountFraction>ACT/360</dayCountFraction>
               <dayCountYearFraction>0.2555</dayCountYearFraction>
               <compoundingMethod>Straight</compoundingMethod>
               <accruedAmount>584381.50</accruedAmount>
            </calculationPeriod>
         </calculationElements>
      </calculationDetails>
      <calculationDetails>
         <grossCashflow>
            <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">20051219USD76095013</cashflowId>
            <payerPartyReference href="party1"/>
            <receiverPartyReference href="party2"/>
            <cashflowAmount>
               <currency>USD</currency>
               <amount>2309576.25</amount>
            </cashflowAmount>
            <cashflowType>Coupon</cashflowType>
         </grossCashflow>
         <observationElements>
            <underlyerReference href="FIXED"/>
            <observationDate>2005-06-23Z</observationDate>
            <observedValue>
               <value>0.06158870</value>
            </observedValue>
         </observationElements>
         <calculationElements>
            <calculationPeriod>
               <adjustedStartDate>2004-12-17Z</adjustedStartDate>
               <adjustedEndDate>2005-06-17Z</adjustedEndDate>
               <numberOfDays>180</numberOfDays>
               <dayCountFraction>30/360</dayCountFraction>
               <dayCountYearFraction>0.50</dayCountYearFraction>
            </calculationPeriod>
         </calculationElements>
      </calculationDetails>
   </payment>
   <party id="party1">
      <partyId>ABCBank001</partyId>
   </party>
   <party id="party2">
      <partyId>DEFBank001</partyId>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex48-cashflow-assertion-XCcy-PrincipalExchange.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="TradeCashflowsAsserted" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.example.com/messageId">CEN/2004/01/05/15-38</messageId>
      <sentBy>ABC</sentBy>
      <sendTo>DEF</sendTo>
      <creationTimestamp>2005-06-01T15:38:00Z</creationTimestamp>
   </header>
   <asOfDate>2005-06-01T15:38:00Z</asOfDate>
   <tradeCashflowsId tradeCashflowsIdScheme="http://www.abc.com/tradeCashflowsId">tradeCashflowsABC001</tradeCashflowsId>
   <tradeIdentifyingItems>
      <partyTradeIdentifier>
         <partyReference href="party1"/>
         <tradeId tradeIdScheme="http://www.abc.com/tradeId">LTAA1103196020</tradeId>
      </partyTradeIdentifier>
      <tradeDetails>
         <tradeDate>2005-06-03Z</tradeDate>
         <effectiveDate>
            <unadjustedDate>2005-06-07Z</unadjustedDate>
         </effectiveDate>
         <terminationDate>
            <unadjustedDate>2025-06-07Z</unadjustedDate>
         </terminationDate>
         <productType productTypeScheme="http://www.fpml.org/coding-scheme/product-type-simple-1-0">CrossCurrencySwap</productType>
         <underlyer id="EUR-EURIBOR-Telerate">
            <floatingRate>
               <floatingRateIndex>EUR-EURIBOR-Telerate</floatingRateIndex>
               <indexTenor>
                  <periodMultiplier>6</periodMultiplier>
                  <period>M</period>
               </indexTenor>
            </floatingRate>
         </underlyer>
         <underlyer id="FIXED">
            <floatingRate>
               <floatingRateIndex>USD-LIBOR-BBA</floatingRateIndex>
               <indexTenor>
                  <periodMultiplier>3</periodMultiplier>
                  <period>M</period>
               </indexTenor>
            </floatingRate>
         </underlyer>
         <notional>
            <currency>USD</currency>
            <amount>92100000.00</amount>
         </notional>
         <notional>
            <currency>EUR</currency>
            <amount>75000000.00</amount>
         </notional>
      </tradeDetails>
   </tradeIdentifyingItems>
   <adjustedPaymentDate>2005-06-07Z</adjustedPaymentDate>
   <payment>
      <identifier paymentIdScheme="http://www.abc.com/netPaymentId">PXINITIAL20050607CROSSEUR</identifier>
      <payerPartyReference href="party2"/>
      <receiverPartyReference href="party1"/>
      <paymentAmount>
         <currency>EUR</currency>
         <amount>75000000.00</amount>
      </paymentAmount>
      <calculationDetails>
         <grossCashflow>
            <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">PXINITIAL20050607CROSSEUR-GROSS</cashflowId>
            <payerPartyReference href="party2"/>
            <receiverPartyReference href="party1"/>
            <cashflowAmount>
               <currency>EUR</currency>
               <amount>75000000.00</amount>
            </cashflowAmount>
            <cashflowType cashflowTypeScheme="http://www.fpml.org/coding-scheme/cashflow-type-1-0">PrincipalExchange</cashflowType>
         </grossCashflow>
      </calculationDetails>
   </payment>
   <payment>
      <identifier paymentIdScheme="http://www.abc.com/netPaymentId">PXINITIAL20050607PRIMARYUSD</identifier>
      <payerPartyReference href="party1"/>
      <receiverPartyReference href="party2"/>
      <paymentAmount>
         <currency>USD</currency>
         <amount>92100000.00</amount>
      </paymentAmount>
      <calculationDetails>
         <grossCashflow>
            <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">PXINITIAL20050607PRIMARYUSD-GROSS</cashflowId>
            <payerPartyReference href="party2"/>
            <receiverPartyReference href="party1"/>
            <cashflowAmount>
               <currency>USD</currency>
               <amount>92100000.00</amount>
            </cashflowAmount>
            <cashflowType cashflowTypeScheme="http://www.fpml.org/coding-scheme/cashflow-type-1-0">PrincipalExchange</cashflowType>
         </grossCashflow>
      </calculationDetails>
   </payment>
   <party id="party1">
      <partyId>ABCBank001</partyId>
   </party>
   <party id="party2">
      <partyId>DEFBank001</partyId>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace")

,

 xdmp:document-insert("/openspaces/demo/msg-ex49-cashflow-assertion-EquityOption.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="TradeCashflowsAsserted" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.example.com/messageId">CEN/2004/01/05/15-38</messageId>
      <sentBy>ABC</sentBy>
      <sendTo>DEF</sendTo>
      <creationTimestamp>2005-12-21T15:00:00Z</creationTimestamp>
   </header>
   <asOfDate>2005-12-21T15:00:00Z</asOfDate>
   <tradeCashflowsId tradeCashflowsIdScheme="http://www.abc.com/tradeCashflowsId">tradeCashflowsABC001</tradeCashflowsId>
   <tradeIdentifyingItems>
      <partyTradeIdentifier>
         <partyReference href="party1"/>
         <tradeId tradeIdScheme="http://www.abc.com/tradeId">SDB1502376013</tradeId>
      </partyTradeIdentifier>
      <tradeDetails>
         <tradeDate>2005-12-21Z</tradeDate>
         <effectiveDate>
            <unadjustedDate>2005-12-21Z</unadjustedDate>
         </effectiveDate>
         <terminationDate>
            <unadjustedDate>2014-12-19Z</unadjustedDate>
         </terminationDate>
         <productType productTypeScheme="http://www.fpml.org/coding-scheme/product-type-simple-1-0">EquityOption</productType>
         <underlyer id="STOXX50E">
            <index>
               <instrumentId instrumentIdScheme="RIC">.STOXX50E</instrumentId>
            </index>
         </underlyer>
         <notional>
            <currency>EUR</currency>
            <amount>23000000.00</amount>
         </notional>
      </tradeDetails>
   </tradeIdentifyingItems>
   <adjustedPaymentDate>2005-12-21Z</adjustedPaymentDate>
   <payment>
      <identifier paymentIdScheme="http://www.abc.com/netPaymentId">SDB1502376013.0.0-1502376013.EUR.20051223</identifier>
      <payerPartyReference href="party2"/>
      <receiverPartyReference href="party1"/>
      <paymentAmount>
         <currency>EUR</currency>
         <amount>3025000.0</amount>
      </paymentAmount>
      <calculationDetails>
         <grossCashflow>
            <cashflowId cashflowIdScheme="http://www.abc.com/cashflowId">SDB1502376013.0.0-1502376013.EUR.20051223-GROSS</cashflowId>
            <payerPartyReference href="party2"/>
            <receiverPartyReference href="party1"/>
            <cashflowAmount>
               <currency>EUR</currency>
               <amount>3025000.0</amount>
            </cashflowAmount>
            <cashflowType cashflowTypeScheme="http://www.fpml.org/coding-scheme/cashflow-type-1-0">Premium</cashflowType>
         </grossCashflow>
      </calculationDetails>
   </payment>
   <party id="party1">
      <partyId>ABCBank001</partyId>
   </party>
   <party id="party2">
      <partyId>DEFBank001</partyId>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex52-contract-cancelled.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="ContractCancelled" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.jpmorgan.com/coding-scheme/message-id">AGT234089234</messageId>
      <sentBy partyIdScheme="http://www.jpmorgan.com/coding-scheme/party-id">2902</sentBy>
      <creationTimestamp>2006-11-03T09:01:00Z</creationTimestamp>
   </header>
   <contractReference>
      <identifier>
         <partyReference href="party1"/>
         <versionedContractId>
            <contractId contractIdScheme="http://www.jpmorgan.com/coding-scheme/contract-id">CDI290204</contractId>
            <version>2</version>
         </versionedContractId>
      </identifier>
      <identifier>
         <partyReference href="party2"/>
         <versionedContractId>
            <contractId contractIdScheme="http://www.partyA.com/coding-scheme/contract-id">1234B6</contractId>
            <version>2</version>
         </versionedContractId>
      </identifier>
   </contractReference>
   <party id="party1">
      <partyId>PARTYJPMBICXXX</partyId>
      <partyName>JP Morgan</partyName>
   </party>
   <party id="party2">
      <partyId>PARTYABICXXX</partyId>
      <partyName>Party A</partyName>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex55-contract-full-termination.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="ContractFullTermination" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.jpmorgan.com/coding-scheme/message-id">AGT234089234</messageId>
      <sentBy partyIdScheme="http://www.jpmorgan.com/coding-scheme/party-id">2902</sentBy>
      <creationTimestamp>2006-11-03T09:01:00Z</creationTimestamp>
   </header>
   <termination>
      <contractReference>
         <identifier>
            <partyReference href="party1"/>
            <versionedContractId>
               <contractId contractIdScheme="http://www.jpmorgan.com/coding-scheme/contract-id">CDI290204</contractId>
               <version>3</version>
            </versionedContractId>
         </identifier>
         <identifier>
            <partyReference href="party2"/>
            <versionedContractId>
               <contractId contractIdScheme="http://www.partyA.com/coding-scheme/contract-id">1234B6</contractId>
               <version>3</version>
            </versionedContractId>
         </identifier>
      </contractReference>
      <date>2006-11-03Z</date>
      <effectiveDate>2006-12-03Z</effectiveDate>
      <payment>
         <payerPartyReference href="party2"/>
         <receiverPartyReference href="party1"/>
         <paymentAmount>
            <currency>USD</currency>
            <amount>12450</amount>
         </paymentAmount>
      </payment>
   </termination>
   <party id="party1">
      <partyId>PARTYJPMBICXXX</partyId>
      <partyName>JP Morgan</partyName>
   </party>
   <party id="party2">
      <partyId>PARTYABICXXX</partyId>
      <partyName>Party A</partyName>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex56-contract-increased.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="ContractIncreased" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.jpmorgan.com/coding-scheme/message-id">AGT234089234</messageId>
      <sentBy partyIdScheme="http://www.jpmorgan.com/coding-scheme/party-id">2902</sentBy>
      <creationTimestamp>2006-11-03T09:01:00Z</creationTimestamp>
   </header>
   <increase>
      <contractReference>
         <identifier>
            <partyReference href="party1"/>
            <versionedContractId>
               <contractId contractIdScheme="http://www.jpmorgan.com/coding-scheme/contract-id">CDI290204</contractId>
               <version>2</version>
            </versionedContractId>
         </identifier>
         <identifier>
            <partyReference href="party2"/>
            <versionedContractId>
               <contractId contractIdScheme="http://www.partyA.com/coding-scheme/contract-id">1234B6</contractId>
               <version>2</version>
            </versionedContractId>
         </identifier>
      </contractReference>
      <date>2006-11-03Z</date>
      <effectiveDate>2006-12-03Z</effectiveDate>
      <payment>
         <payerPartyReference href="party2"/>
         <receiverPartyReference href="party1"/>
         <paymentAmount>
            <currency>USD</currency>
            <amount>95000</amount>
         </paymentAmount>
      </payment>
      <changeInNotionalAmount>
         <currency>USD</currency>
         <amount>1000000</amount>
      </changeInNotionalAmount>
      <outstandingNotionalAmount>
         <currency>USD</currency>
         <amount>11000000</amount>
      </outstandingNotionalAmount>
   </increase>
   <party id="party1">
      <partyId>PARTYJPMBICXXX</partyId>
      <partyName>JP Morgan</partyName>
   </party>
   <party id="party2">
      <partyId>PARTYABICXXX</partyId>
      <partyName>Party A</partyName>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace")

,

 xdmp:document-insert("/openspaces/demo/msg-ex61-inc-update-5-positions-acknowledged.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="PositionsAcknowledged" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.recserv.com/mid">MSG0003</messageId>
      <inReplyTo messageIdScheme="http://www.abc.com/mid">ABC0002</inReplyTo>
      <sentBy>RECSERV</sentBy>
      <sendTo>ABCDUS33</sendTo>
      <creationTimestamp>2006-04-27T15:39:01Z</creationTimestamp>
   </header>
   <portfolio>
      <portfolioName>fundPortfolio1</portfolioName>
      <asOfDate>2006-04-25Z</asOfDate>
      <definingParty href="dealer"/>
      <matchingParty href="fund"/>
   </portfolio>
   <definedPosition>
      <positionId positionIdScheme="http://www.abc.com/positionId">Position-02</positionId>
      <version>1</version>
   </definedPosition>
   <party id="dealer">
      <partyId>ABCDUS33</partyId>
      <partyName>ABCD Securities Inc.</partyName>
   </party>
   <party id="fund">
      <partyId>HEGDUS33</partyId>
      <partyName>HedgeCo Capital L.L.C.</partyName>
   </party>
<price>2</price><nextTask><Task> Sum the values in the element called price </Task><Info><entry>cts:element-values($element as xs:QName, ..) - returns sequence of all unique values for the given QName</entry><entry>fn:sun(sequence) sum the values in the sequence</entry></Info></nextTask></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex65-inc-update-9-match-results.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="PositionsMatchResults" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.recserv.com/mid">MSG0006</messageId>
      <inReplyTo messageIdScheme="http://www.abc.com/mid">ABC0001</inReplyTo>
      <sentBy>RECSERV</sentBy>
      <sendTo>ABCDUS33</sendTo>
      <creationTimestamp>2006-04-27T15:48:02Z</creationTimestamp>
   </header>
   <portfolio>
      <portfolioName>fundPortfolio1</portfolioName>
      <asOfDate>2006-04-25Z</asOfDate>
      <definingParty href="dealer"/>
      <matchingParty href="fund"/>
   </portfolio>
   <positionMatchResult>
      <status>Mismatched</status>
      <assertedPosition>
         <positionId positionIdScheme="http://www.abc.com/positionId">Position-01</positionId>
         <version>1</version>
      </assertedPosition>
      <proposedMatch>
         <positionId positionIdScheme="http://www.hedgeco.com/positionId">MyPos-01</positionId>
         <version>1</version>
         <constituent>
            <trade>
               <tradeHeader>
                  <partyTradeIdentifier>
                     <partyReference href="fund"/>
                     <tradeId tradeIdScheme="http://www.hedgeco.com/fx-id">HEDG-0001</tradeId>
                  </partyTradeIdentifier>
                  <tradeDate>2006-04-24Z</tradeDate>
               </tradeHeader>
               <fxSingleLeg>
                  <exchangedCurrency1>
                     <payerPartyReference href="fund"/>
                     <receiverPartyReference href="dealer"/>
                     <paymentAmount>
                        <currency>GBP</currency>
                        <amount>10000000</amount>
                     </paymentAmount>
                  </exchangedCurrency1>
                  <exchangedCurrency2>
                     <payerPartyReference href="dealer"/>
                     <receiverPartyReference href="fund"/>
                     <paymentAmount>
                        <currency>USD</currency>
                        <amount>14700000</amount>
                     </paymentAmount>
                  </exchangedCurrency2>
                  <valueDate>2006-04-26Z</valueDate>
                  <exchangeRate>
                     <quotedCurrencyPair>
                        <currency1>GBP</currency1>
                        <currency2>USD</currency2>
                        <quoteBasis>Currency2PerCurrency1</quoteBasis>
                     </quotedCurrencyPair>
                     <rate>1.47</rate>
                  </exchangeRate>
               </fxSingleLeg>
            </trade>
         </constituent>
         <valuation>
            <quote>
               <value>12300.00</value>
               <measureType>NPV</measureType>
               <currency>USD</currency>
            </quote>
         </valuation>
         <matchId matchIdScheme="http://www.abc.com/matchId">Position-m-01</matchId>
         <difference>
            <differenceType>Value</differenceType>
            <differenceSeverity>Error</differenceSeverity>
            <element>amount</element>
            <basePath>/constituent/trade/fxSingleLeg/exchangedCurrency2/paymentAmount/amount</basePath>
            <baseValue>14800000</baseValue>
            <otherPath>/constituent/trade/fxSingleLeg/exchangedCurrency2/paymentAmount/amount</otherPath>
            <otherValue>14700000</otherValue>
            <message>Value [14800000] in ABCDUS33 is [14700000] in HEDGUS33.</message>
         </difference>
         <difference>
            <differenceType>Value</differenceType>
            <differenceSeverity>Error</differenceSeverity>
            <element>rate</element>
            <basePath>/constituent/trade/fxSingleLeg/exchangeRate/rate</basePath>
            <baseValue>1.48</baseValue>
            <otherPath>/constituent/trade/fxSingleLeg/exchangeRate/rate</otherPath>
            <otherValue>1.47</otherValue>
            <message>Value [1.48] in ABCDUS33 is [1.47] in HEDGUS33.</message>
         </difference>
         <difference>
            <differenceType>Value</differenceType>
            <differenceSeverity>Warning</differenceSeverity>
            <element>value</element>
            <basePath>/valuation/quote/value</basePath>
            <baseValue>12345.00</baseValue>
            <otherPath>/valuation/quote/value</otherPath>
            <otherValue>12300.00</otherValue>
            <message>Value [12345.00] in ABCDUS33 is [12300.00] in HEDGUS33.</message>
         </difference>
      </proposedMatch>
   </positionMatchResult>
   <positionMatchResult>
      <status positionStatusScheme="http://www.recserv.com/positionStatus">Unmatched</status>
      <assertedPosition>
         <positionId positionIdScheme="http://www.abc.com/positionId">Position-02</positionId>
         <version>1</version>
      </assertedPosition>
   </positionMatchResult>
   <matchCompleted>true</matchCompleted>
   <party id="dealer">
      <partyId>ABCDUS33</partyId>
      <partyName>ABCD Securities Inc.</partyName>
   </party>
   <party id="fund">
      <partyId>HEGDUS33</partyId>
      <partyName>HedgeCo Capital L.L.C.</partyName>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex68-inc-update-12-positions-acknowledged.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="PositionsAcknowledged" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <messageId messageIdScheme="http://www.recserv.com/mid">MSG0008</messageId>
      <inReplyTo messageIdScheme="http://www.abc.com/mid">ABC0003</inReplyTo>
      <sentBy>RECSERV</sentBy>
      <sendTo>ABCDUS33</sendTo>
      <creationTimestamp>2006-04-27T15:58:01Z</creationTimestamp>
   </header>
   <portfolio>
      <portfolioName>fundPortfolio1</portfolioName>
      <asOfDate>2006-04-25Z</asOfDate>
      <definingParty href="dealer"/>
      <matchingParty href="fund"/>
   </portfolio>
   <definedPosition>
      <positionId positionIdScheme="http://www.abc.com/positionId">Position-01</positionId>
      <version>2</version>
   </definedPosition>
   <removedPosition>
      <positionId positionIdScheme="http://www.abc.com/positionId">Position-02</positionId>
      <version>1</version>
   </removedPosition>
   <party id="dealer">
      <partyId>ABCDUS33</partyId>
      <partyName>ABCD Securities Inc.</partyName>
   </party>
   <party id="fund">
      <partyId>HEGDUS33</partyId>
      <partyName>HedgeCo Capital L.L.C.</partyName>
   </party>
<price>2</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex93-contract-novated-cancelled.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="ContractNovatedCancelled" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <conversationId conversationIdScheme="http://www.jpmorgan.com/coding-scheme/conversation-id">CNV090</conversationId>
      <messageId messageIdScheme="http://www.jpmorgan.com/coding-scheme/message-id">AGT234089235</messageId>
      <sentBy partyIdScheme="http://www.jpmorgan.com/coding-scheme/party-id">2902</sentBy>
      <creationTimestamp>2006-11-03T09:10:00Z</creationTimestamp>
   </header>
   <contractReference>
      <identifier>
         <partyReference href="party1"/>
         <versionedContractId>
            <contractId contractIdScheme="http://www.jpmorgan.com/coding-scheme/contract-id">CDI290204</contractId>
            <version>4</version>
         </versionedContractId>
      </identifier>
      <identifier>
         <partyReference href="party2"/>
         <versionedContractId>
            <contractId contractIdScheme="http://www.partyA.com/coding-scheme/contract-id">1234B6</contractId>
            <version>4</version>
         </versionedContractId>
      </identifier>
   </contractReference>
   <novation>
      <oldContractReference>
         <identifier>
            <partyReference href="party1"/>
            <versionedContractId>
               <contractId contractIdScheme="http://www.jpmorgan.com/coding-scheme/contract-id">CDI290204</contractId>
               <version>2</version>
            </versionedContractId>
         </identifier>
         <identifier>
            <partyReference href="party2"/>
            <versionedContractId>
               <contractId contractIdScheme="http://www.partyA.com/coding-scheme/contract-id">1234B6</contractId>
               <version>2</version>
            </versionedContractId>
         </identifier>
      </oldContractReference>
      <newContractReference>
         <identifier>
            <partyReference href="party1"/>
            <versionedContractId>
               <contractId contractIdScheme="http://www.jpmorgan.com/coding-scheme/contract-id">CDI290205</contractId>
               <version>1</version>
            </versionedContractId>
         </identifier>
         <identifier>
            <partyReference href="party3"/>
            <versionedContractId>
               <contractId contractIdScheme="http://www.partyB.com/coding-scheme/contract-id">234GK22</contractId>
               <version>1</version>
            </versionedContractId>
         </identifier>
      </newContractReference>
      <transferor href="party1"/>
      <transferee href="party2"/>
      <remainingParty href="party3"/>
      <novationDate>2006-12-14Z</novationDate>
      <novatedAmount>
         <currency>USD</currency>
         <amount>5000000</amount>
      </novatedAmount>
      <payment>
         <payerPartyReference href="party1"/>
         <receiverPartyReference href="party2"/>
         <paymentAmount>
            <currency>USD</currency>
            <amount>50000</amount>
         </paymentAmount>
         <paymentType>Closeout Fee</paymentType>
      </payment>
   </novation>
   <party id="party1">
      <partyId>PARTYJPMBICXXX</partyId>
      <partyName>JP Morgan</partyName>
   </party>
   <party id="party2">
      <partyId>PARTYABICXXX</partyId>
      <partyName>Party A</partyName>
   </party>
   <party id="party3">
      <partyId>PARTYABICXXX</partyId>
      <partyName>Party B</partyName>
   </party>
<price>9</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace") 

,

xdmp:document-insert("/openspaces/demo/msg-ex98-contract-full-termination-cancelled.xml" ,
<FpML version="4-4" xsi:schemaLocation="http://www.fpml.org/2007/FpML-4-4 ../../fpml-main-4-4.xsd http://www.w3.org/2000/09/xmldsig# ../../xmldsig-core-schema.xsd" xsi:type="ContractFullTerminationCancelled" xmlns="http://www.fpml.org/2007/FpML-4-4" xmlns:fpml="http://www.fpml.org/2007/FpML-4-4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <header>
      <conversationId conversationIdScheme="http://www.jpmorgan.com/coding-scheme/conversation-id">CNV090</conversationId>
      <messageId messageIdScheme="http://www.jpmorgan.com/coding-scheme/message-id">AGT234089235</messageId>
      <sentBy partyIdScheme="http://www.jpmorgan.com/coding-scheme/party-id">2902</sentBy>
      <creationTimestamp>2006-11-03T09:10:00Z</creationTimestamp>
   </header>
   <contractReference>
      <identifier>
         <partyReference href="party1"/>
         <versionedContractId>
            <contractId contractIdScheme="http://www.jpmorgan.com/coding-scheme/contract-id">CDI290204</contractId>
            <version>4</version>
         </versionedContractId>
      </identifier>
      <identifier>
         <partyReference href="party2"/>
         <versionedContractId>
            <contractId contractIdScheme="http://www.partyA.com/coding-scheme/contract-id">1234B6</contractId>
            <version>4</version>
         </versionedContractId>
      </identifier>
   </contractReference>
   <party id="party1">
      <partyId>PARTYJPMBICXXX</partyId>
      <partyName>JP Morgan</partyName>
   </party>
   <party id="party2">
      <partyId>PARTYABICXXX</partyId>
      <partyName>Party A</partyName>
   </party>
<price>11</price></FpML>,(xdmp:permission("openspace", "read"),
xdmp:permission("openspace", "insert"),
xdmp:permission("openspace", "update") ), "openspace")

)