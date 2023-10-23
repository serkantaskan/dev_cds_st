@AbapCatalog.sqlViewName: 'ZST_CDS1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Development 1'
define view ZSTASKAN_CDS1 as select from mara
{
    mara.matnr,
    mara.ernam
}
