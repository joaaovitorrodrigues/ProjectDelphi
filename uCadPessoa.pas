unit uCadPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmCadPessoa = class(TForm)
    pnlDados: TPanel;
    Panel1: TPanel;
    btnSalvar: TButton;
    btnCancelar: TButton;
    txtCodigo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtNome: TEdit;
    txtSobrenome: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    txtCPF: TMaskEdit;
    txtDataCadastro: TEdit;
    Label5: TLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    function validaCampos: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPessoa: TfrmCadPessoa;

implementation

{$R *.dfm}

procedure TfrmCadPessoa.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCadPessoa.btnSalvarClick(Sender: TObject);
begin

  if validaCampos then
    ModalResult := mrOk;
end;

function TfrmCadPessoa.validaCampos: Boolean;
begin
  result := False;
  if Trim(txtNome.Text) = '' then
  begin
    Application.MessageBox('Informe o campo "nome".','Atenção',MB_ICONWARNING + MB_OK);
    txtNome.SetFocus;
  end
  else if Trim(txtSobrenome.Text) = '' then
  begin
    Application.MessageBox('Informe o campo "Sobrenome".','Atenção',MB_ICONWARNING + MB_OK);
    txtSobrenome.SetFocus;
  end
  else if (Trim(txtCPF.Text) = '') or (txtCPF.Text = '   .   .   -  ') then
  begin
    Application.MessageBox('Informe o campo "CPF".','Atenção',MB_ICONWARNING + MB_OK);
    txtCPF.SetFocus;
  end
  else if Trim(txtDataCadastro.Text) = '' then
  begin
    Application.MessageBox('Informe o campo "Data de Cadastro".','Atenção',MB_ICONWARNING + MB_OK);
    txtDataCadastro.SetFocus;
  end
  else
    result := True;
end;

end.
