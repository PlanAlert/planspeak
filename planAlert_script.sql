--adding a comment line to the script

CREATE TABLE public."tbl_CellularPlanGroup"(
	"ProviderPlanID" "float" NOT NULL,
	"familyID" integer NULL,
	"perLineFactor" "smallint" NULL,
	"isPostpaid" Boolean NOT NULL,
	"maxLines" "smallint" NULL,
	"GB" "real" NULL,
	"DiscountID" integer NULL,
	"TaxFeeIncluded" Boolean NOT NULL,
	"isCancelled" Boolean NOT NULL,
	"MoreInfo" character varying (255) NULL,
	"keyNotes" character varying (max) NULL
);


/****** Object:  Table "dbo"."tbl_CellularProviderPlanFamily"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_CellularProviderPlanFamily"(
	"familyID" integer NOT NULL,
	"providerID" integer NULL,
	"familyDisplay" character varying (255) NULL,
	"familyName" character varying (255) NULL,
	"familyAbbrev" character varying (255) NULL,
	"availableOn" "datetime" NULL,
	"expiredOn" "datetime" NULL,
	"cancelledOn" "datetime" NULL,
	"notes" character varying (255) NULL
);

/****** Object:  Table "dbo"."tbl_CellularStagedProviderPlans"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_CellularStagedProviderPlans"(
	"ID" integer NOT NULL,
	"ProvID" integer NULL,
	"ProvPlanID" integer NULL,
	"isActive" Boolean NOT NULL,
	"isCancelled" Boolean NOT NULL,
	"LineNo" integer NULL,
	"DataCost" integer NULL,
	"LineCost" integer NULL,
	"DataLimit" integer NULL,
	"ThrottleDep" integer NULL,
	"HotspotLimit" integer NULL,
	"dUnits" character varying (255) NULL,
	"DiscountID" integer NULL,
	"TaxFeeIncl" Boolean NOT NULL,
	"TaxFactor" integer NULL,
	"VidRes" integer NULL,
	"vUnits" character varying (255) NULL,
	"isDeprioritized" Boolean NOT NULL,
	"isPostpaid" Boolean NOT NULL,
	"UpdatedOn" "datetime" NULL,
	"ExpiresOn" "datetime" NULL,
	"AvailableOn" "datetime" NULL,
	"PlanName" character varying (255) NULL,
	"PlanFamilyID" integer NULL,
	"LineCostDetail" character varying (255) NULL,
	"BundleDetail" character varying (255) NULL,
	"CountryID" integer NULL
);
/****** Object:  Table "dbo"."tbl_CellularStagedUserPlans"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_CellularStagedUserPlans"(
	"ID" integer NOT NULL,
	"ProvID" integer NULL,
	"ProvPlanID" integer NULL,
	"UserID" integer NULL,
	"UserPlanID" integer NOT NULL,
	"LineCount" "smallint" NULL,
	"DataCost" "real" NULL,
	"LineCost" integer NULL,
	"DataLimit" integer NULL,
	"ThrottleDep" integer NULL,
	"Hotspot" integer NULL,
	"VidRes" integer NULL,
	"isActive" Boolean NOT NULL,
	"DiscountID" integer NULL,
	"TaxFeeIncl" Boolean NOT NULL,
	"isDeprioritized" Boolean NOT NULL,
	"isPostpaid" Boolean NOT NULL,
	"UpdatedOn" "datetime" NULL,
	"TaxRate" "real" NULL,
	"isValidated" Boolean NOT NULL,
	"RegionID" integer NULL,
	"SubRegionID" integer NULL,
	"SavingsCompareOn" "datetime" NULL
);

/****** Object:  Table "dbo"."tbl_CellularUserPreference"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_CellularUserPreference"(
	"UserProfileID" "float" NULL,
	"UserPlanID" "float" NOT NULL,
	"SavingsThresholdMyProv" integer NULL,
	"SavingsThresholdOtherProv" integer NULL,
	"ModifiedDate" "datetime" NULL,
	"ModifiedBy" "float" NULL,
	"filterBetterThrottle" Boolean NOT NULL,
	"filterBetterHotSport" Boolean NOT NULL,
	"filterBetterFeatureOpt3" Boolean NOT NULL,
	"filterBetterFeatureOpt4" Boolean NOT NULL,
	"filterBetterFeatureOpt5" Boolean NOT NULL,
	"filterBetterFeatureOpt6" Boolean NOT NULL,
	"relaxDataConstraint" "real" NULL,
	"isActive" Boolean NOT NULL,
	"OLDUserProfileID" integer NULL,
	"OldUserPlanID" integer NULL,
	"OLDUserPreferenceID" integer NULL
) ;

CREATE TABLE "dbo"."tbl_CellularUserSavings"(
	"ID" integer NOT NULL,
	"UserID" integer NULL,
	"UserPlanID" integer NULL,
	"UserPlanProvID" integer NULL,
	"SavingsProvID" integer NULL,
	"SavingsProvPlanID" integer NULL,
	"SavingsAmount" "real" NULL,
	"isActive" Boolean NOT NULL,
	"UpdatedOn" "datetime" NULL
) ;

/****** Object:  Table "dbo"."tbl_Country"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_Country"(
	"countryID" integer NOT NULL,
	"countrySort" integer NULL,
	"geoSchemeID" integer NULL,
	"isoCountryID" integer NULL,
	"isoCountryAlpha2" character varying (255) NULL,
	"countryName" character varying (255) NULL,
	"isoCurrencyID" integer NULL,
	"dialCodePrimary" integer NULL,
	"dialCodeSecondary" "float" NULL,
	"isActive" Boolean NOT NULL,
	"isDeleted" Boolean NOT NULL,
	"fedSalesTax" "float" NULL,
	"fedSalesTaxName" character varying (255) NULL,
	"fedTaxUpdatedOn" "datetime" NULL,
	"fedTaxWireless" "float" NULL,
	"fedTaxWirelessName" character varying (255) NULL,
	"fedTaxWirelessUpdatedOn" "datetime" NULL,
	"fedTaxInternet" "float" NULL,
	"fedTaxInternetName" character varying (255) NULL,
	"fedTaxInternetUpdatedOn" "datetime" NULL
) ;

/****** Object:  Table "dbo"."tbl_CountryRegion"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_CountryRegion"(
	"regionID" "float" NULL,
	"countryID" integer NULL,
	"isoRegionCode" character varying (255) NULL,
	"countyRegionCode" character varying (255) NULL,
	"subRegionOf" character varying (255) NULL,
	"regionName" character varying (255) NULL,
	"displayName" character varying (255) NULL,
	"status" character varying (255) NULL,
	"population" "float" NULL,
	"locLang" character varying (255) NULL,
	"isFedTaxIgnored" Boolean NOT NULL,
	"fedTaxIncludeFactor" "smallint" NULL,
	"Note" character varying (255) NULL,
	"taxUpdatedOn" "datetime" NULL,
	"regTaxWireless" "float" NULL,
	"regTaxWirelessName" character varying (255) NULL,
	"regTaxInternet" "float" NULL,
	"regTaxInternetName" character varying (255) NULL
) ;

/****** Object:  Table "dbo"."tbl_Ctry_PostalSort"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_Ctry_PostalSort"(
	"ID" integer NOT NULL,
	"ctryID" integer NULL,
	"sortDigits" integer NULL,
	"sortCode" character varying (255) NULL,
	"regionID" "float" NULL,
	"subRegionID" "float" NULL,
	"countryRegionCode" character varying (255) NULL,
	"placeName" character varying (255) NULL,
	"isActive" Boolean NOT NULL,
	"Note" character varying (255) NULL
) ;

/****** Object:  Table "dbo"."tbl_Ctry_SubRegion"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_Ctry_SubRegion"(
	"subRegionID" integer NOT NULL,
	"countryID" integer NULL,
	"regionID" integer NULL,
	"isoSubAlpha2" character varying (255) NULL,
	"nameSubRegion" character varying (255) NULL,
	"displayName" character varying (255) NULL,
	"lookupName" character varying (255) NULL,
	"status" character varying (255) NULL,
	"seat" character varying (255) NULL,
	"population" "float" NULL,
	"latititude" "float" NULL,
	"longitude" "float" NULL,
	"Note" character varying (255) NULL,
	"subRegTaxWireless" "float" NULL,
	"subRegTaxWirelessName" character varying (255) NULL,
	"subRegTaxInternet" "float" NULL,
	"subRegTaxInternetName" character varying (255) NULL
) ;

/****** Object:  Table "dbo"."tbl_DiscountOptions"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_DiscountOptions"(
	"DiscountOptionID" "float" NULL,
	"DiscountOptionShortName" character varying (255) NULL,
	"DiscountOptionName" character varying (255) NULL,
	"ToolTipDescription" character varying (255) NULL,
	"IsActive" Boolean NOT NULL,
	"IsDelete" Boolean NOT NULL,
	"CreatedBy" "float" NULL,
	"CreatedDate" "datetime" NULL,
	"ModifiedBy" "float" NULL,
	"ModifiedDate" "datetime" NULL
) ;

/****** Object:  Table "dbo"."tbl_ISO3166country"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_ISO3166country"(
	"ID" integer NOT NULL,
	"isoNumericID" integer NULL,
	"isoAlpha2" character varying (255) NULL,
	"isoAlpha3" character varying (255) NULL,
	"isoName" character varying (255) NULL,
	"displayName" character varying (255) NULL
) ;

/****** Object:  Table "dbo"."tbl_ISO4217currency"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_ISO4217currency"(
	"ID" integer NOT NULL,
	"isoNumericID" integer NULL,
	"currencyAlpha3" character varying (255) NULL,
	"isoCurrencyName" character varying (255) NULL,
	"decimalPlaces" integer NULL,
	"symbol" character varying (255) NULL,
	"subUnits" character varying (255) NULL
) ;

/****** Object:  Table "dbo"."tbl_ItemRegister"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_ItemRegister"(
	"oid" "float" NULL,
	"ItemRegisterID" integer NOT NULL,
	"SubPlanTypeID" integer NULL,
	"ItemTypeID" integer NULL,
	"ItemConfigurationID" integer NULL,
	"ItemUnitMeasureTypeID" integer NULL,
	"ShowSelecting" Boolean NOT NULL,
	"ItemRegisterName" character varying (255) NULL,
	"ItemRegisterDisplay" character varying (255) NULL,
	"ItemRegisterDescription" character varying (255) NULL,
	"IsConfigurable" Boolean NOT NULL,
	"HasMultiple" Boolean NOT NULL,
	"IsQtyDebit" Boolean NOT NULL,
	"IsValDebit" Boolean NOT NULL,
	"IsHasUnitComparison" Boolean NOT NULL,
	"IsCompared" Boolean NOT NULL,
	"IsValueContribution" Boolean NOT NULL,
	"IsIntrinsicQty" Boolean NOT NULL,
	"IsCredit" Boolean NOT NULL,
	"IsSubscriberOptional" Boolean NOT NULL,
	"IsActive" Boolean NOT NULL,
	"IsDelete" Boolean NOT NULL,
	"CreatedBy" "float" NULL,
	"CreatedDate" "datetime" NULL,
	"ModifiedBy" "float" NULL,
	"ModifiedDate" "datetime" NULL,
	"IconPath" character varying (255) NULL,
	"ShowDetailing" Boolean NOT NULL,
	"ShowEditing" Boolean NOT NULL,
	"ShowCompare" Boolean NOT NULL,
	"ValueContributionFactor" "smallint" NULL
) ;

/****** Object:  Table "dbo"."tbl_ItemUnitMeasure"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_ItemUnitMeasure"(
	"oid" "float" NULL,
	"ItemUnitMeasureID" integer NULL,
	"ItemUnitMeasureTypeID" integer NULL,
	"ItemUnitMeasureName" character varying (255) NULL,
	"ItemUnitMeasureDisplay" character varying (255) NULL,
	"ItemUnitMeasureAbbrev" character varying (255) NULL,
	"ItemUnitQtyOverride" "float" NULL,
	"ItemUnitMeasureRatio" character varying (255) NULL,
	"ItemUnitMeasureOrder" integer NULL,
	"ItemUnitMeasureConvertUp" "float" NULL,
	"Description" character varying (255) NULL,
	"IsActive" Boolean NOT NULL,
	"IsDelete" Boolean NOT NULL,
	"CreatedBy" integer NULL,
	"CreatedDate" "datetime" NULL,
	"ModifiedBy" integer NULL,
	"ModifiedDate" "datetime" NULL
) ;

/****** Object:  Table "dbo"."tbl_Provider"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_Provider"(
	"oid" "float" NULL,
	"ProviderID" integer NOT NULL,
	"ProviderName" character varying (255) NOT NULL,
	"ProviderDisplay" character varying (255) NOT NULL,
	"ProviderAbbrv" character varying (255) NOT NULL,
	"AddressID" "float" NULL,
	"SubPlanTypeID" "float" NOT NULL,
	"RegionID" "float" NULL,
	"MarketSegmentID" "float" NULL,
	"CountryID" "float" NOT NULL,
	"WebAddr" character varying (255) NULL,
	"EmailAddr" character varying (255) NULL,
	"SubscriberTelNo" character varying (255) NULL,
	"ProspectTelNo" character varying (255) NULL,
	"BckgrColor" character varying (255) NULL,
	"ForeColor" character varying (255) NULL,
	"CardColor" character varying (255) NULL,
	"prvNetwork" character varying (255) NULL,
	"IsActive" Boolean NOT NULL,
	"IsDelete" Boolean NOT NULL,
	"CreatedBy" "float" NULL,
	"CreatedDate" "datetime" NULL,
	"ModifiedBy" "float" NULL,
	"ModifiedDate" "datetime" NULL
) ;

/****** Object:  Table "dbo"."tbl_ProviderPlan"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_ProviderPlan"(
	"oid" "float" NULL,
	"ProviderPlanID" "float" NULL,
	"ModifiedDate" "datetime" NULL,
	"SubPlanTypeID" integer NULL,
	"ProviderID" "float" NULL,
	"ProviderPlanName" character varying (255) NULL,
	"ProviderPlanDisplay" character varying (255) NULL,
	"ProviderPlanAbbrev" character varying (255) NULL,
	"PlanBaseCost" "float" NULL,
	"Description" character varying (255) NULL,
	"ExpiresOn" "datetime" NULL,
	"ExpiresToID" "float" NULL,
	"IsAvailable" Boolean NOT NULL,
	"IsSelectable" Boolean NOT NULL,
	"IsActive" Boolean NOT NULL,
	"IsDelete" Boolean NOT NULL,
	"CreatedBy" integer NULL,
	"CreatedDate" "datetime" NULL,
	"ModifiedBy" integer NULL,
	"AvailableOn" "datetime" NULL
) ;

/****** Object:  Table "dbo"."tbl_ProviderPlanItem"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_ProviderPlanItem"(
	"oid" "float" NULL,
	"ProviderPlanItemID" "float" NULL,
	"ProviderPlanID" "float" NULL,
	"ItemRegisterID" "float" NULL,
	"ItemNo" "smallint" NULL,
	"ProviderPlanItemDisplay" character varying (255) NULL,
	"ParentID" "float" NULL,
	"SiblingID" "float" NULL,
	"HasChildren" Boolean NOT NULL,
	"RollupQtyItm" "smallint" NULL,
	"Quantity" "float" NULL,
	"ItemUnitMeasureID" "float" NULL,
	"QuantityValue" "money" NULL,
	"ExpiresOn" "datetime" NULL,
	"ExpiresToID" "float" NULL,
	"IsActive" Boolean NOT NULL,
	"IsDelete" Boolean NOT NULL,
	"CreatedBy" "float" NULL,
	"CreatedDate" "datetime" NULL,
	"ModifiedBy" "float" NULL,
	"ModifiedDate" "datetime" NULL
) ;

/****** Object:  Table "dbo"."tbl_ProviderPlanRegion"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_ProviderPlanRegion"(
	"ProviderPlanID" integer NULL,
	"CountryID" integer NULL,
	"RegionID" integer NULL,
	"SubRegionId" integer NULL
) ;

/****** Object:  Table "dbo"."tbl_UNgeoScheme"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_UNgeoScheme"(
	"psGlobalRegionID" integer NOT NULL,
	"un_M49_Code" integer NULL,
	"regionName" character varying (255) NULL,
	"regionAbbrev" character varying (255) NULL,
	"un_M49_SubRegion_Code" integer NULL,
	"subRegionName" character varying (255) NULL,
	"un_M49_IntermediateRegion_Code" integer NULL,
	"regionDivisionName" character varying (255) NULL,
	"useName" character varying (255) NULL,
	"isActive" Boolean NOT NULL,
	"isDelete" Boolean NOT NULL,
	"modifiedBy" "float" NULL,
	"modifiedDate" "datetime" NULL,
	"Notes" character varying (255) NULL
) ;

/****** Object:  Table "dbo"."tbl_UserPreference"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_UserPreference"(
	"UserPreferenceID" "float" NULL,
	"UserProfileID" "float" NULL,
	"CompareOrTrack" character varying (255) NULL,
	"UserPlanSavingCost" "float" NULL,
	"OtherPlanSavingCost" "float" NULL,
	"PlanID" character varying (255) NULL,
	"Phonelinecount" "float" NULL,
	"Datalowerlimit" "float" NULL,
	"Dataupperlimit" "float" NULL,
	"IsActive" Boolean NOT NULL,
	"IsDelete" Boolean NOT NULL,
	"CreatedBy" "float" NULL,
	"CreatedDate" "datetime" NULL,
	"ModifiedBy" "float" NULL,
	"ModifiedDate" "datetime" NULL,
	"UserPlanName" character varying (255) NULL,
	"userproviderplanid" character varying (255) NULL
) ;

/****** Object:  Table "dbo"."tbl_UserProfile_Discount"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_UserProfile_Discount"(
	"UserDiscountProfileID" "float" NOT NULL,
	"UserProfileID" "float" NULL,
	"DiscountOptions" character varying (255) NULL,
	"IsActive" Boolean NOT NULL,
	"IsDelete" Boolean NOT NULL,
	"CreatedBy" "float" NULL,
	"CreatedDate" "datetime" NULL,
	"ModifiedBy" "float" NULL,
	"ModifiedDate" "datetime" NULL
) ;

/****** Object:  Table "dbo"."tbl_UserProfile_Discount2"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_UserProfile_Discount2"(
	"UserProfileID" "float" NULL,
	"DiscountID" integer NULL,
	"IsActive" Boolean NOT NULL,
	"ModifiedBy" "float" NULL,
	"ModifiedDate" "datetime" NULL,
	"OldUserProfileID" integer NULL
) ;

/****** Object:  Table "dbo"."tbl_userproviderplan"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_userproviderplan"(
	"oid" "float" NOT NULL,
	"userproviderplanid" "float" NULL,
	"UserProfileID" "float" NULL,
	"ProviderplanID" "float" NULL,
	"UserPreferenceID" "float" NULL,
	"providerplanname" character varying (255) NULL,
	"userplanname" character varying (255) NULL,
	"userplanbasecost" "float" NULL,
	"IsAvailable" Boolean NOT NULL,
	"IsSelectable" Boolean NOT NULL,
	"IsActive" Boolean NOT NULL,
	"IsDelete" Boolean NOT NULL,
	"CreatedBy" "float" NULL,
	"CreatedDate" "datetime" NULL,
	"ModifiedBy" "float" NULL,
	"ModifiedDate" "datetime" NULL
) ;

/****** Object:  Table "dbo"."tbl_userproviderplanitem"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_userproviderplanitem"(
	"userproviderplanitemid" "float" NULL,
	"userproviderplanid" "float" NULL,
	"ItemRegisterID" "smallint" NULL,
	"ItemNo" "smallint" NULL,
	"ProviderPlanItemDisplay" character varying (255) NULL,
	"ParentID" "float" NULL,
	"SiblingID" integer NULL,
	"HasChildren" Boolean NOT NULL,
	"RollupQtyItm" integer NULL,
	"Quantity" "real" NULL,
	"ItemUnitMeasureID" "float" NULL,
	"QuantityValue" "real" NULL,
	"IsActive" Boolean NOT NULL,
	"IsDelete" Boolean NOT NULL,
	"CreatedBy" "float" NULL,
	"CreatedDate" "datetime" NULL,
	"ModifiedBy" "float" NULL,
	"ModifiedDate" "datetime" NULL,
	"providerplanid" "float" NULL
) ;

/****** Object:  Table "dbo"."tbl_UserRegion"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."tbl_UserRegion"(
	"UserID" "float" NULL,
	"PostCode" character varying (255) NULL,
	"CountryID" integer NULL,
	"RegionID" integer NULL,
	"SubRegionID" integer NULL,
	"CellularTaxRate" "real" NULL,
	"InternetTaxRate" "real" NULL,
	"UpdatedBy" "float" NULL,
	"UpdatedOn" "datetime" NULL
) ;

/****** Object:  Table "dbo"."UserProfiles"    Script Date: 9/2/2021 1:20:17 PM ******/

CREATE TABLE "dbo"."UserProfiles"(
	"oid" "float" NULL,
	"UserProfileID" "float" NULL,
	"AddressID" integer NULL,
	"FirstName" character varying (255) NULL,
	"MiddleName" character varying (255) NULL,
	"LastName" character varying (255) NULL,
	"Email" character varying (255) NULL,
	"UserName" character varying (255) NULL,
	"Password" character varying (255) NULL,
	"PasswordSalt" character varying (255) NULL,
	"PasswordHint" character varying (255) NULL,
	"CountryCode" integer NULL,
	"MobileNo" character varying (255) NULL,
	"IsActive" Boolean NOT NULL,
	"IsDelete" Boolean NOT NULL,
	"CreatedBy" "float" NULL,
	"CreatedDate" "datetime" NULL,
	"ModifiedBy" "float" NULL,
	"ModifiedDate" "datetime" NULL
) ;

