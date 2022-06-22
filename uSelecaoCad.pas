unit uSelecaoCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    pnlFundo: TPanel;
    rdbCadPessoa: TRadioButton;
    pnlRodape: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    rdbCadCidade: TRadioButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
