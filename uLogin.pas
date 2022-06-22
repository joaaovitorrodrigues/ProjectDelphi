unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uHome;

type
  TfrmLogin = class(TForm)
    pnlDados: TPanel;
    Label2: TLabel;
    txtUsuario: TEdit;
    Label3: TLabel;
    txtSenha: TEdit;
    Panel1: TPanel;
    btnEntrar: TButton;
    btnSair: TButton;
    pnlLogo: TPanel;
    procedure btnEntrarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    function validaCampos: Boolean;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
  if validaCampos then
    ModalResult := mrOk;
    frmPrincipal := TfrmPrincipal.Create(Self);
    frmPrincipal.Show;
end;

procedure TfrmLogin.btnSairClick(Sender: TObject);
begin
  Close;
end;

function TfrmLogin.validaCampos: Boolean;
begin
  result := False;
  if Trim(txtUsuario.Text) = '' then
  begin
    Application.MessageBox('Informe o campo "Usuário".','Atenção',MB_ICONWARNING + MB_OK);
    txtUsuario.SetFocus;
  end
  else if Trim(txtSenha.Text) = '' then
  begin
    Application.MessageBox('Informe o campo "Senha".','Atenção',MB_ICONWARNING + MB_OK);
    txtSenha.SetFocus;
  end
  {else if (Trim(txtCPF.Text) = '') or (txtCPF.Text = '   .   .   -  ') then
  begin
    Application.MessageBox('Informe o campo "CPF".','Atenção',MB_ICONWARNING + MB_OK);
    txtCPF.SetFocus;
  end
  else if Trim(txtDataCadastro.Text) = '' then
  begin
    Application.MessageBox('Informe o campo "Data de Cadastro".','Atenção',MB_ICONWARNING + MB_OK);
    txtDataCadastro.SetFocus;
  end}
  else
    result := True;
end;

end.
