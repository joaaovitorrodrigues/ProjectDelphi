unit uHome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Menus, UdmPessoa, UPesqPessoa, uPesquisaCidade, UdmCidade,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mnuPrincipal: TMenuItem;
    mnuCadastroPessoa: TMenuItem;
    N1: TMenuItem;
    mnuCadastroCidade: TMenuItem;
    Sair1: TMenuItem;
    pnlFundo: TPanel;
    pnlLateral: TPanel;
    btnCadastrar: TBitBtn;
    btnRelatorio: TBitBtn;
    btnOrcamento: TBitBtn;
    btnEstoque: TBitBtn;
    btnVenda: TBitBtn;
    btnOcorrencia: TBitBtn;
    btnSair: TBitBtn;
    btnPesquisa: TBitBtn;
    procedure Sair1Click(Sender: TObject);
    procedure mnuCadastroPessoaClick(Sender: TObject);
    procedure mnuCadastroCidadeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uLogin;

{$R *.dfm}

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
    frmLogin.Free;
end;

procedure TfrmPrincipal.mnuCadastroCidadeClick(Sender: TObject);
begin
  frmPesqCidade := TfrmPesqCidade.Create(Self);
  dtmCidade.oQryCidade.Params.ParamByName('idCidade').AsLargeInt := 0;
  dtmCidade.oQryCidade.Params.ParamByName('nomeCidade').AsString := '';
  dtmCidade.oQryCidade.Params.ParamByName('estadoCidade').AsString := '';
  dtmCidade.oQryCidade.Params.ParamByName('paisCidade').AsString := '';
  dtmCidade.oQryCidade.Params.ParamByName('cepCidade').AsString := '';
  dtmCidade.oQryCidade.Params.ParamByName('habitantesCidade').AsString := '';
  dtmCidade.oQryCidade.Open();
  frmPesqCidade.Show;
end;

procedure TfrmPrincipal.mnuCadastroPessoaClick(Sender: TObject);
begin
  frmPesqPessoa := TfrmPesqPessoa.Create(Self);
  dtmPessoa.oQryPessoa.Close;
  dtmPessoa.oQryPessoa.Params.ParamByName('idPessoa').AsLargeInt := 0;
  dtmPessoa.oQryPessoa.Params.ParamByName('nomePessoa').AsString := '';
  dtmPessoa.oQryPessoa.Params.ParamByName('sobrenomePessoa').AsString := '';
  dtmPessoa.oQryPessoa.Params.ParamByName('cpfPessoa').AsString := '';
  dtmPessoa.oQryPessoa.Open();
  frmPesqPessoa.Show;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

end.
