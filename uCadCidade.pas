unit uCadCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TfrmCadCidade = class(TForm)
    txtNome: TEdit;
    txtEstado: TEdit;
    txtPais: TEdit;
    txtHabitantes: TEdit;
    txtDcadastro: TEdit;
    txtCodigo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Pais: TLabel;
    CEP: TLabel;
    Label7: TLabel;
    txtCep: TMaskEdit;
    pnlRodape: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    function validaCampos: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCidade: TfrmCadCidade;

implementation

{$R *.dfm}

procedure TfrmCadCidade.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCadCidade.BitBtn2Click(Sender: TObject);
begin
  if validaCampos then
  ModalResult := mrOk;
end;

function TfrmCadCidade.validaCampos: Boolean;
begin
  result := False;
  if Trim(txtNome.Text) = '' then
  begin
    Application.MessageBox('Informe o campo "Nome".','Atenção',MB_ICONWARNING + MB_OK);
    txtNome.SetFocus;
  end
  else if Trim(txtEstado.Text) = '' then
  begin
    Application.MessageBox('Informe o campo "Estado".','Atenção',MB_ICONWARNING + MB_OK);
    txtEstado.SetFocus;
  end
  else if Trim(txtPais.Text) = '' then
  begin
    Application.MessageBox('Informe o campo "Pais".','Atenção',MB_ICONWARNING + MB_OK);
    txtPais.SetFocus;
  end
  else if Trim(txtCep.Text) = '' then
  begin
    Application.MessageBox('Informe o campo "CEP".','Atenção',MB_ICONWARNING + MB_OK);
    txtCep.SetFocus;
  end
  else if Trim(txtHabitantes.Text) = '' then
  begin
    Application.MessageBox('Informe o campo "Habitantes".','Atenção',MB_ICONWARNING + MB_OK);
    txtHabitantes.SetFocus;
  end
  else
    result := True;
end;
end.
