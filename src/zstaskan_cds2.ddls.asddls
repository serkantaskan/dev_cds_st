@AbapCatalog.sqlViewName: 'ZST_CDS2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Homework 1'
define view ZSTASKAN_CDS2 as select from ekko 
                              inner join ekpo on ekko.ebeln = ekpo.ebeln 
                              inner join mara on mara.matnr = ekpo.matnr
                              left outer join makt on makt.matnr = mara.matnr and makt.spras = $session.system_language 
                              inner join lfa1 on lfa1.lifnr = ekko.lifnr
{

ekpo.ebeln,
ekpo.ebelp,
ekpo.matnr,
makt.maktx,
ekpo.werks ,
ekpo.lgort ,
ekpo.meins ,
lfa1.lifnr,
lfa1.name1 ,

concat( lfa1.stras, lfa1.mcod3 ) as satici_adresi
    
}


 