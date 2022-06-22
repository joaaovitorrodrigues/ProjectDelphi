unit UdmCidade;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UdmConexao;

type
  TdtmCidade = class(TDataModule)
    oTabCidade: TFDTable;
    oQryCidade: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmCidade: TdtmCidade;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
