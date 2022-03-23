@echo off
mode con: cols=150 lines=45
Title DRUG DATA SEARCH OPTION - DDSO
color A1
@echo on
@ echo: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@ Echo: PharmApp // Copyright 2021 // NGHIEN CUU THUOC // RnD PHARMA PLUS // WWW.NGHIENCUUTHUOC.COM
@ echo: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@ Echo: DRUG DATA SEARCH OPTION - DDSO
@ echo: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@ echo: 1) DRUG INFORMATIOM (THONG TIN VE TO HDSD, DUOC DONG, DUOC LUC, DUOC LY)
@ echo: + Leaflet                                       + Pharmacokinetics                                + Pharmacodynamics
@ echo: + Safety data sheet                             + Pharmacology
@ echo: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@ echo: 2) PHYSICOCHEMICAL PROPERTIES OF DRUG COMPOUNDS
@ echo: a) Molecular Properties                         b) Material Properties                             c) Bulk Properties
@ echo: (Properties Defined by the Molecular Structure) (Properties Intrinsic to the Material or Particle) (Properties Related to Bulk Powders)
@ echo: + Molecular weight                              + Salt form                                        + Powder flow
@ echo: + logP/logD/pKa                                 + Crystal form (XRPD)                              + Bulk density
@ echo: + Chemical stability                            + Crystal habit                                    + Wettability
@ echo: + Melting point                                 + Particle size                                    + Powder electrostatics
@ echo: + Solid-state stability                         + Specific surface area  
@ echo: + Spectral characterization (UV, IR, NMR)       + Hygroscopicity
@ echo: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@ echo: 1) DRUG INFORMATION
@ echo: 2) PHYSIOCOCHEMICAL_PROPERTIES_DRUG
@ echo: 3) DRUG BANK VN (THU VIEN SO DANG KY THUOC)
@ echo: 4) PATENT FORMULATION (TAI LIEU BAN QUYEN)
@ echo: 5) DRUG DELIVERY (HE PHAN PHOI, HE HAP THU THUOC)
@ echo: 6) COMMON DATA CHEMICAL (THONG TIN CHUNG VE HOA CHAT)
@ echo: 7) REFERENCE STANDARDS (CHAT CHUAN)
@ echo: 8) DRUG STABILITY (DO ON DINH DUOC CHAT, DO ON DINH THUOC)
@ echo: 9) ENTER NEW API (QUAY LAI TIM KIEM DUOC CHAT KHAC)
@ echo: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@ echo: THANKS FOR USING
@ echo: KEY SEACH!
@ echo: DRUG: Delivery, Dossier, drug, Formulation, Pharmaceutical, pharmacokinetics, toxicokinetics, 
@ echo: COSM: Cosmeceutical, cosmetics, Fragrances
@ echo: NUTRA: natural, nutraceutical, Supplement
@ echo: VET: veterinary
@ echo: MED: medicine, Pediatric, Dermatology
@ echo: API: Azelaic acid
@ echo: BRANNAME: Nexium
@ echo: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@ECHO OFF
set /p id=ENTER KEY API OR BRADNAME?:

@ECHO OFF
CLS
ECHO 1.DRUG INFORMATION
ECHO 2.PHYSIOCOCHEMICAL_PROPERTIES_DRUG
ECHO 3.DRUG BANK VN (THU VIEN SO DANG KY THUOC)
ECHO 4.PATENT FORMULATION (TAI LIEU BAN QUYEN)
ECHO 5.DRUG DELIVERY (HE PHAN PHOI, HE HAP THU THUOC)
ECHO 6.COMMON DATA CHEMICAL (THONG TIN CHUNG VE HOA CHAT)
ECHO 7.REFERENCE STANDARDS (CHAT CHUAN)
ECHO 8.DRUG STABILITY (DO ON DINH DUOC CHAT, DO ON DINH THUOC)
ECHO 9.ENTER NEW API (QUAY LAI TIM KIEM DUOC CHAT KHAC)
ECHO.
CHOICE /C 123456789 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 9 GOTO ENTER_NEW_API
IF ERRORLEVEL 8 GOTO DRUG_STABILITY
IF ERRORLEVEL 7 GOTO REFERENCE_STANDARDS
IF ERRORLEVEL 6 GOTO COMMON_DATA_CHEMICAL
IF ERRORLEVEL 5 GOTO DRUG_DELIVERY
IF ERRORLEVEL 4 GOTO PATENT_FORMULATION
IF ERRORLEVEL 3 GOTO DRUG_BANK_VN
IF ERRORLEVEL 2 GOTO PHYSIOCOCHEMICAL_PROPERTIES_DRUG
IF ERRORLEVEL 1 GOTO DRUG_INFORMATION



:DRUG_INFORMATION
ECHO DRUG INFORMATION
start "" "https://dailymed.nlm.nih.gov/dailymed/search.cfm?labeltype=all&query=%id%"
start "" "https://www.google.com/search?q=%id%+CENTER+FOR+DRUG+EVALUATION+AND+RESEARCH"
start "" "https://www.google.com/search?q=%id%+site:fda.gov"
start "" "https://www.google.com/search?q=%id%+"SUMMARY+OF+PRODUCT+CHARACTERISTICS""
start "" "https://www.google.com/search?q=%id%+"Data Sheet""
start "" "https://www.google.com/search?q=%id%+SDS"
start "" "https://www.google.com/search?q=%id%+SAFETY+DATA+SHEET"
start "" "https://www.drugfuture.com/standard/index.html#%id%"
start "" "https://www.google.com/search?q=%id%+pharmacokinetics"
start "" "https://www.google.com/search?q=%id%+pharmacodynamics"
start "" "https://www.medicines.org.uk/emc/search?q=%id%"
strat "" "https://www.google.com/search?q=%id%+site:pharmacodia.com"
start "" "https://pubmed.ncbi.nlm.nih.gov/?term=%id%"
start "" "https://www.google.com/search?q=%id%+site:clinicaltrials.gov"
start "" "https://drugcentral.org/?q=%id%"


GOTO End

:PHYSIOCOCHEMICAL_PROPERTIES_DRUG
ECHO  PHYSIOCOCHEMICAL PROPERTIES DRUG
start "" "https://pubchem.ncbi.nlm.nih.gov/compound/%id%"
start "" "https://www.google.com.vn/search?q=%id%+colour&source=lnms"
start "" "https://www.google.com.vn/search?q=%id%+solubility"
start "" "https://www.google.com.vn/search?q=%id%+Molecular+weight"
start "" "https://www.google.com.vn/search?q=%id%+logP"
start "" "https://www.google.com.vn/search?q=%id%+logD"
start "" "https://www.google.com.vn/search?q=%id%+pKa"
start "" "https://www.google.com.vn/search?q=%id%+Chemical+stability"
start "" "https://www.google.com.vn/search?q=%id%+Spectral+characterization"
start "" "https://www.google.com.vn/search?q=%id%+Melting+point"
start "" "https://www.google.com.vn/search?q=%id%+Solid-state+stability"
start "" "https://www.google.com.vn/search?q=%id%+Spectral+characterization+UV"
start "" "https://www.google.com.vn/search?q=%id%+Spectral+characterization+IR"
start "" "https://www.google.com.vn/search?q=%id%+Spectral+characterization+NMR"
start "" "https://www.google.com.vn/search?q=%id%+Salt+form"
start "" "https://www.google.com.vn/search?q=%id%+Crystal+form"
start "" "https://www.google.com.vn/search?q=%id%+Crystal+habit"
start "" "https://www.google.com.vn/search?q=%id%+Particle+size"
start "" "https://www.google.com.vn/search?q=%id%+Specific+surface+area"
start "" "https://www.google.com.vn/search?q=%id%+Hygroscopicity"
start "" "https://www.google.com.vn/search?q=%id%+Powder+flow"
start "" "https://www.google.com.vn/search?q=%id%+Bulk+density"
start "" "https://www.google.com.vn/search?q=%id%+Wettability"
start "" "https://www.google.com.vn/search?q=%id%+Powder+electrostatics"
start "" "https://www.google.com/search?q=%id%+"Data Sheet""
start "" "https://www.google.com/search?q=%id%+SDS"
start "" "https://www.google.com/search?q=%id%+SAFETY+DATA+SHEET"
GOTO End

:DRUG_BANK_VN
ECHO DRUG BANK VN
start "" "https://www.google.com/search?q=""%id%"+site:drugbank.vn""
start "" "http://vinapharm.com.vn/index.php/search-result/1/1/Ket-qua-tra-cuu.html?keyword=%id%&but_val=submit&x=48&y=9"
start "" "https://thuvienphapluat.vn/phap-luat/tim-van-ban.aspx?keyword=%id%&match=True&area=0"
start "" "https://dichvucong.dav.gov.vn/congbothuoc/index#%id%"

GOTO End

:PATENT_FORMULATION
ECHO PATENT FORMULATION
start "" "https://patents.google.com/?q=%id%+compositions"
start "" "https://patents.google.com/?q=%id%+formulation"
start "" "https://patents.google.com/?q=%id%+Preparation"
start "" "https://patents.google.com/?q=%id%+Pharmaceutical+combination"
start "" "https://patents.google.com/?q=%id%+formula"
start "" "https://www.google.com/search?q=%id%"
GOTO End

:DRUG_DELIVERY
ECHO DRUG DELIVERY
start "" "https://www.google.com.vn/search?q=%id%e+enhance+asorption"
start "" "https://www.google.com.vn/search?q=%id%+absorption"
start "" "https://www.google.com.vn/search?q=%id%+drug delivery"
GOTO End


:COMMON_DATA_CHEMICAL
ECHO COMMON DATA CHEMICAL
start "" "https://www.ulprospector.com/en/asia/PersonalCare/search?k=%id%"
start "" "https://druginfo.nlm.nih.gov/drugportal/unii/%id%"
start "" "https://fdasis.nlm.nih.gov/srs/unii/%id%"
start "" "https://fdasis.nlm.nih.gov/srs/#%id%"
start "" "https://pharmaoffer.com/api-excipient-supplier/%id%"
start "" "https://google2.fda.gov/search?q=%id%&client=FDAgov&site=FDAgov&lr=&proxystylesheet=FDAgov&requiredfields=-archive%3AYes&output=xml_no_dtd&getfields=*"
start "" "http://www.ema.europa.eu/ema/index.jsp?curl=search.jsp&q=%id%&btnG=Search&mid="
start "" "http://kensaku.mhlw.go.jp/search?q=%id%&btnG=search&site=mhlw_collection&client=mhlw_frontend_E&proxystylesheet=mhlw_frontend_E&output=xml_no_dtd&ie=utf-8&oe=utf-8"
start "" "https://www.canada.ca/en/sr.html?st=s&s5bm3ts21rch=x&num=10&st1rt=1&langs=en&cdn=canada&hq=&_charset_=UTF-8&q=%id%&%3Acq_csrf_token=undefined#wb-land"
start "" "http://search.who.int/search?q=%id%&ie=utf8&site=who&client=_en_r&proxystylesheet=_en_r&output=xml_no_dtd&oe=utf8&getfields=doctype"
start "" "http://search.health.gov.au/s/search.html?query=%id%&collection=health&profile=health&Submit="
start "" "https://mohfw.gov.in/goisearch?search_key=%id%"
start "" "https://patents.google.com/?q=%id%"
start "" "http://www.freepatentsonline.com/result.html?sort=relevance&srch=top&query_txt=%id%&submit=&patents=on"
start "" "https://search.tga.gov.au/s/search.html?collection=tga-websites-web&query=%id%&op=Search"
start "" "http://vinapharm.com.vn/index.php/search-result/1/1/Ket-qua-tra-cuu.html?keyword=%id%&but_val=submit&x=48&y=9"
start "" "https://www.google.com.vn/search?q=%id%+site%3Atracuumypham.com"
start "" "http://congbomypham.cqldvn.gov.vn/Pages/lookupCosPermitManager.zul#%id%"
start "" "https://www.pharmacompass.com/active-pharmaceutical-ingredients/%id%"
start "" "http://api-generic.com/base?search_type=api&Substances%5Bproduct_name%5D=%id%"
start "" "https://mail.google.com/mail/u/0/#search/%id%"
start "" "http://www.cochrane.org/search/site/%id%"
start "" "https://clinicaltrials.gov/ct2/results?recrs=&cond=&term=%id%&cntry=&state=&city=&dist="
start "" "https://archive.org/search.php?query=%id%"
start "" "https://eurekasante.vidal.fr/recherche/index/q:%id%/"
start "" "https://www.sciencedirect.com/search?qs=%id%&authors=&pub=&volume=&issue=&page=&origin=home&zone=qSearch:
start "" "http://www.ebi.ac.uk/chebi/advancedSearchFT.do?searchString=%id%&queryBean.stars=2"
start "" "https://www.alibaba.com/trade/search?fsb=y&IndexArea=product_en&CatId=&SearchText=%id%&viewtype="
start "" "https://www.sciencedirect.com/search?qs_cid=&qs=%id%+&authors=&pub=&volume=&issue=&page=&origin=article&zone=qSearch"
start "" "https://www.chemblink.com/#%id%/"
start "" "http://www.pharmtech.com/search/apachesolr_search/%id%/this"
GOTO End




:REFERENCE_STANDARDS
ECHO REFERENCE STANDARDS
start "" "https://www.google.com.vn/search?q=%id%+Reference+Standards"
start "" "https://www.sigmaaldrich.com/catalog/search?term=%id%&interface=All&N=0&mode=match%20partialmax&lang=en&region=VN&focus=product"
start "" "https://www.pharmacompass.com/active-pharmaceutical-ingredients/%id%"
GOTO End

:DRUG_STABILITY
ECHO DRUG STABILITY
start "" "https://www.google.com/search?q=""%id%"+DRUG+STABILITY"
GOTO End


:ENTER_NEW_API
ECHO ENTER NEW API
"DRUG_DATA_SEARCH_OPTION.BAT"
GOTO End

:End

"DRUG_DATA_SEARCH_OPTION.BAT"
