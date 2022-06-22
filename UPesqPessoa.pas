unit UPesqPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, UdmPessoa, uCadPessoa;

type
  TfrmPesqPessoa = class(TForm)
    grdGrid: TDBGrid;
    pnlPesquisa: TPanel;
    txtPesquisa: TEdit;
    Label1: TLabel;
    btnInserir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    dtsGrid: TDataSource;
    btnPesquisar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqPessoa: TfrmPesqPessoa;

implementation

{$R *.dfm}

procedure TfrmPesqPessoa.btnAlterarClick(Sender: TObject);
begin
  var IdSelecionado := dtmPessoa.oQryPessoa.FieldByName('idPessoa').AsLargeInt;

  frmCadPessoa := TfrmCadPessoa.Create(Self);

  // Importa os dados para a tela
  dtmPessoa.oTabPessoa.Close;
  dtmPessoa.oTabPessoa.Open;
  dtmPessoa.oTabPessoa.FindKey([IdSelecionado]);

  frmCadPessoa.txtCodigo.Text := dtmPessoa.oTabPessoa.FieldByName('idPessoa').AsString;
  frmCadPessoa.txtDataCadastro.Text := dtmPessoa.oTabPessoa.FieldByName('dataCadastro').AsString;
  frmCadPessoa.txtNome.Text := dtmPessoa.oTabPessoa.FieldByName('nomePessoa').AsString;
  frmCadPessoa.txtSobrenome.Text := dtmPessoa.oTabPessoa.FieldByName('sobrenomePessoa').AsString;
  frmCadPessoa.txtCPF.Text := dtmPessoa.oTabPessoa.FieldByName('cpfPessoa').AsString;

  if frmCadPessoa.ShowModal = mrOk then
  begin
    // Salva os dados na table
    dtmPessoa.oTabPessoa.Edit;
    dtmPessoa.oTabPessoa.FieldByName('nomePessoa').AsString := frmCadPessoa.txtNome.Text;
    dtmPessoa.oTabPessoa.FieldByName('sobrenomePessoa').AsString := frmCadPessoa.txtSobrenome.Text;
    dtmPessoa.oTabPessoa.FieldByName('cpfPessoa').AsString := frmCadPessoa.txtCPF.Text;
    dtmPessoa.oTabPessoa.Post;
    btnPesquisar.Click;

    dtmPessoa.oTabPessoa.Close;

    frmCadPessoa.Free;

    Application.MessageBox('Pessoa atualizada com sucesso.','Sucesso', MB_OK + MB_ICONINFORMATION)
  end
  else
  begin
    // A operação foi cancelada
    dtmPessoa.oTabPessoa.Close;
    frmCadPessoa.Free;
    Application.MessageBox('A operação foi cancelada.','Cancelado', MB_OK + MB_ICONINFORMATION)
  end;
end;

procedure TfrmPesqPessoa.btnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Tem certeza que deseja excluir o registro?','Confirmação',
  MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    var IdSelecionado := dtmPessoa.oQryPessoa.FieldByName('idPessoa').AsLargeInt;

    dtmPessoa.oTabPessoa.Close;
    dtmPessoa.oTabPessoa.Open;
    dtmPessoa.oTabPessoa.FindKey([IdSelecionado]);

    dtmPessoa.oTabPessoa.Delete;
    btnPesquisar.Click;
    Application.MessageBox('Registro excluído com sucesso.','Sucesso',MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure TfrmPesqPessoa.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPesqPessoa.btnInserirClick(Sender: TObject);
begin
  frmCadPessoa := TfrmCadPessoa.Create(Self);
  frmCadPessoa.txtDataCadastro.Text := FormatDateTime('dd/mm/yyyy',Now);
  if frmCadPessoa.ShowModal = mrOk then
  begin
    // Salva os dados na table
    dtmPessoa.oTabPessoa.Close;
    dtmPessoa.oTabPessoa.Open;

    dtmPessoa.oTabPessoa.Append;
    dtmPessoa.oTabPessoa.FieldByName('nomePessoa').AsString := frmCadPessoa.txtNome.Text;
    dtmPessoa.oTabPessoa.FieldByName('sobrenomePessoa').AsString := frmCadPessoa.txtSobrenome.Text;
    dtmPessoa.oTabPessoa.FieldByName('cpfPessoa').AsString := frmCadPessoa.txtCPF.Text;
    dtmPessoa.oTabPessoa.FieldByName('dataCadastro').AsDateTime := date;
    dtmPessoa.oTabPessoa.Post;
    btnPesquisar.Click;

    dtmPessoa.oTabPessoa.Close;

    frmCadPessoa.Free;

    Application.MessageBox('Pessoa cadastrada com sucesso.','Sucesso', MB_OK + MB_ICONINFORMATION)
  end
  else
  begin
    // A operação foi cancelada
    dtmPessoa.oTabPessoa.Close;
    frmCadPessoa.Free;
    Application.MessageBox('A operação foi cancelada.','Cancelado', MB_OK + MB_ICONINFORMATION)
  end;

end;

procedure TfrmPesqPessoa.btnPesquisarClick(Sender: TObject);
begin
  dtmPessoa.oQryPessoa.Close;
  dtmPessoa.oQryPessoa.Params.ParamByName('idPessoa').AsLargeInt := strtointdef(txtPesquisa.Text,0);
  dtmPessoa.oQryPessoa.Params.ParamByName('nomePessoa').AsString := '%'+txtPesquisa.Text+'%';
  dtmPessoa.oQryPessoa.Params.ParamByName('sobrenomePessoa').AsString := '%'+txtPesquisa.Text+'%';
  dtmPessoa.oQryPessoa.Params.ParamByName('cpfPessoa').AsString := txtPesquisa.Text;
  dtmPessoa.oQryPessoa.Open();
end;

procedure TfrmPesqPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  frmPesqPessoa := nil;
end;

end.
