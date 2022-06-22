unit uPesquisaCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, UdmCidade, Data.DB, Vcl.Grids, Vcl.DBGrids, uCadCidade;

type
  TfrmPesqCidade = class(TForm)
    pnlPesquisaCidade: TPanel;
    Label1: TLabel;
    txtPesquisar: TEdit;
    btnPesquisaCidade: TBitBtn;
    btnInserir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    grdGrid1: TDBGrid;
    dtsGrid1: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnPesquisaCidadeClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqCidade: TfrmPesqCidade;

implementation

{$R *.dfm}

procedure TfrmPesqCidade.btnAlterarClick(Sender: TObject);
begin
  var IdSelecionado := dtmCidade.oQryCidade.FieldByName('idCidade').AsLargeInt;

  frmCadCidade := TfrmCadCidade.Create(Self);

  // Importa os dados para a tela
  dtmCidade.oTabCidade.Close;
  dtmCidade.oTabCidade.Open;
  dtmCidade.oTabCidade.FindKey([IdSelecionado]);

  frmCadCidade.txtCodigo.Text := dtmCidade.oTabCidade.FieldByName('idCidade').AsString;
  frmCadCidade.txtDCadastro.Text := dtmCidade.oTabCidade.FieldByName('dataCadastro').AsString;
  frmCadCidade.txtNome.Text := dtmCidade.oTabCidade.FieldByName('nomeCidade').AsString;
  frmCadCidade.txtEstado.Text := dtmCidade.oTabCidade.FieldByName('estadoCidade').AsString;
  frmCadCidade.txtPais.Text := dtmCidade.oTabCidade.FieldByName('paisCidade').AsString;
  frmCadCidade.txtCep.Text := dtmCidade.oTabCidade.FieldByName('cepCidade').AsString;
  frmCadCidade.txtHabitantes.Text := dtmCidade.oTabCidade.FieldByName('habitantesCidade').AsString;

  if frmCadCidade.ShowModal = mrOk then
  begin
    // Salva os dados na table
    dtmCidade.oTabCidade.Edit;
    dtmCidade.oTabCidade.FieldByName('nomeCidade').AsString := frmCadCidade.txtNome.Text;
    dtmCidade.oTabCidade.FieldByName('estadoCidade').AsString := frmCadCidade.txtEstado.Text;
    dtmCidade.oTabCidade.FieldByName('paisCidade').AsString := frmCadCidade.txtPais.Text;
    dtmCidade.oTabCidade.FieldByName('estadoCidade').AsString := frmCadCidade.txtCep.Text;
    dtmCidade.oTabCidade.FieldByName('habitantesCidade').AsString := frmCadCidade.txtHabitantes.Text;
    dtmCidade.oTabCidade.Post;
    btnPesquisaCidade.Click;

    dtmCidade.oTabCidade.Close;

    frmCadCidade.Free;

    Application.MessageBox('Pessoa atualizada com sucesso.','Sucesso', MB_OK + MB_ICONINFORMATION)
  end
  else
  begin
    // A operação foi cancelada
    dtmCidade.oTabCidade.Close;
    frmCadCidade.Free;
    Application.MessageBox('A operação foi cancelada.','Cancelado', MB_OK + MB_ICONINFORMATION)
  end;
end;

procedure TfrmPesqCidade.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPesqCidade.btnInserirClick(Sender: TObject);
begin
  frmCadCidade := TfrmCadCidade.Create(Self);

  if frmCadCidade.ShowModal = mrOk then
  begin
    dtmCidade.oTabCidade.Close;
    dtmCidade.oTabCidade.Open;

    dtmCidade.oTabCidade.Append;
    dtmCidade.oTabCidade.FieldByName('idCidade').AsString := frmCadCidade.txtNome.Text;
  end;

end;

procedure TfrmPesqCidade.btnPesquisaCidadeClick(Sender: TObject);
begin
  dtmCidade.oQryCidade.Close;
  dtmCidade.oQryCidade.Params.ParamByName('idCidade').AsLargeInt := strtointdef(txtPesquisar.Text,0);
  dtmCidade.oQryCidade.Params.ParamByName('nomeCidade').AsString := '%'+txtPesquisar.Text+'%';
  dtmCidade.oQryCidade.Params.ParamByName('estadoCidade').AsString := '%'+txtPesquisar.Text+'%';
  dtmCidade.oQryCidade.Params.ParamByName('paisCidade').AsString := '%'+txtPesquisar.Text+'%';
  dtmCidade.oQryCidade.Params.ParamByName('cepCidade').AsString := txtPesquisar.Text;
  dtmCidade.oQryCidade.Params.ParamByName('habitantesCidade').AsString := txtPesquisar.Text;
  dtmCidade.oQryCidade.Open;
end;

end.
