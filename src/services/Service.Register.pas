unit Service.Register;

interface

uses
  System.SysUtils,
  System.Classes,
  Service.Connection,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TServiceRegister = class(TDataModule)
    QRYEntity: TFDQuery;
    QRYLogs: TFDQuery;
    QRYSale: TFDQuery;
    QRYProduct: TFDQuery;
    QRYEntityPEOPLE_ID: TIntegerField;
    QRYEntityNAME: TStringField;
    QRYEntityEIN_CNPJ: TStringField;
    QRYEntityPHONE: TStringField;
    QRYEntityEMAIL: TStringField;
    QRYEntityDATE_BIRTH: TDateField;
    QRYEntityDATE_REGISTER: TDateField;
    QRYEntityCLIENT: TBooleanField;
    QRYEntityEMPLOYEE: TBooleanField;
    QRYEntitySUPPLIER: TBooleanField;
    QRYEntityTRANSPORT: TBooleanField;
    QRYProductPROD_ID: TIntegerField;
    QRYProductNAME: TStringField;
    QRYProductDESCRIPTION: TStringField;
    QRYProductCATEGORY: TStringField;
    QRYProductSUPPLIER: TStringField;
    QRYProductACTIVE: TBooleanField;
    QRYProductDATE_REGISTER: TSQLTimeStampField;
    QRYProductBRAND: TStringField;
    QRYProductUN: TStringField;
    QRYProductDATE_UPDATED: TSQLTimeStampField;
    QRYProductUSER_ID: TIntegerField;
    QRYProductUSER_UPDATE: TIntegerField;
    QRYEntitySTREET: TStringField;
    QRYEntityNUMBER_ADDRESS: TStringField;
    QRYEntityCOMPLEMENT: TStringField;
    QRYEntityNEIGHBORHOOD: TStringField;
    QRYEntityCITY: TStringField;
    QRYEntitySTATE: TStringField;
    QRYEntityZIP_CODE: TStringField;
    QRYEntityFANTASY: TStringField;
    QRYEntityOBS: TStringField;
    QRYEntityDATE_UPDATED: TSQLTimeStampField;
    QRYIDPeople: TFDQuery;
    QRYIDPeopleMAXID: TIntegerField;
    QRYIDProd: TFDQuery;
    QRYIDProdMAXID: TIntegerField;
    QRYIDSale: TFDQuery;
    QRYIDSaleMAXID: TIntegerField;
    QRYNamePeople: TFDQuery;
    QRYNamePeopleNAME: TStringField;
    QRYLogsLANCTO: TIntegerField;
    QRYLogsUSER: TStringField;
    QRYLogsDATE: TSQLTimeStampField;
    QRYLogsDESCRIPTION: TStringField;
    QRYLogsPAGE: TStringField;
    QRYLogsCOMPANY: TIntegerField;
    QRYEntityCOM_ID: TStringField;
    QRYEntityUSER: TStringField;
    QRYProductUSER: TStringField;
    QRYProductCOM_ID: TStringField;
    QRYSaleSALE_ID: TIntegerField;
    QRYSaleCLIENT_ID: TIntegerField;
    QRYSaleEMPLOYEE_ID: TIntegerField;
    QRYSalePROD_ID: TIntegerField;
    QRYSaleUNIT: TIntegerField;
    QRYSaleTOTAL: TFMTBCDField;
    QRYSaleQTDE: TIntegerField;
    QRYSaleADDITION: TIntegerField;
    QRYSaleDISCOUNT: TIntegerField;
    QRYSaleSUBTOTAL: TIntegerField;
    QRYSaleDATE_PAYMENT: TSQLTimeStampField;
    QRYSalePAID: TBooleanField;
    QRYSaleCASH: TBooleanField;
    QRYSaleCHANGE: TIntegerField;
    QRYSaleINSTALLMENT: TBooleanField;
    QRYSaleSQLTimeStampField1ST_INSTALLMENT: TSQLTimeStampField;
    QRYSaleINSTALLMENT_VALUE: TIntegerField;
    QRYSaleINSTALLMENT_AMOUNT: TIntegerField;
    QRYSaleDATE_UPDATED: TSQLTimeStampField;
    QRYSaleUSER: TStringField;
    QRYSaleDATE_SALE: TSQLTimeStampField;
    QRYSaleOBS: TStringField;
    QRYSaleCOM_ID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceRegister: TServiceRegister;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
