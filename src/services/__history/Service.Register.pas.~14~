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
    QRYEntityENTIDADE_ID: TIntegerField;
    QRYEntityNOME: TStringField;
    QRYEntityTIPO: TStringField;
    QRYEntityDOCUMENTO: TStringField;
    QRYEntityTELEFONE: TStringField;
    QRYEntityEMAIL: TStringField;
    QRYEntityENDERECO: TStringField;
    QRYEntityDATA_NASCIMENTO: TDateField;
    QRYEntityDATA_CRIACAO: TDateField;
    QRYStock: TFDQuery;
    QRYStockESTOQUE_ID: TIntegerField;
    QRYStockPRODUTO_ID: TIntegerField;
    QRYStockQUANTIDADE: TIntegerField;
    QRYStockPRECO_COMPRA: TFMTBCDField;
    QRYStockPRECO_VENDA: TFMTBCDField;
    QRYStockDATA_ATUALIZACAO: TSQLTimeStampField;
    QRYSaleItens: TFDQuery;
    QRYSaleItensITEM_ID: TIntegerField;
    QRYSaleItensVENDA_ID: TIntegerField;
    QRYSaleItensPRODUTO_ID: TIntegerField;
    QRYSaleItensQUANTIDADE: TIntegerField;
    QRYSaleItensPRECO_UNITARIO: TFMTBCDField;
    QRYSaleItensTOTAL: TFMTBCDField;
    QRYSale: TFDQuery;
    QRYSaleVENDA_ID: TIntegerField;
    QRYSaleCLIENTE_ID: TIntegerField;
    QRYSaleFUNCIONARIO_ID: TIntegerField;
    QRYSaleDATA_VENDA: TSQLTimeStampField;
    QRYSaleTOTAL: TFMTBCDField;
    QRYSalePAGAMENTO_STATUS: TStringField;
    QRYSaleDATA_PAGAMENTO: TSQLTimeStampField;
    QRYSaleFORMA_PAGAMENTO: TStringField;
    QRYSaleEMPRESA_ID: TIntegerField;
    QRYProduct: TFDQuery;
    QRYProductPRODUTO_ID: TIntegerField;
    QRYProductNOME: TStringField;
    QRYProductDESCRICAO: TStringField;
    QRYProductCATEGORIA: TStringField;
    QRYProductFORNECEDOR: TStringField;
    QRYProductIMAGEM: TBlobField;
    QRYProductDATA_CRIACAO: TSQLTimeStampField;
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
