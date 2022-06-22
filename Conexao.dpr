program Conexao;

uses
  Vcl.Forms,
  uCadPessoa in 'uCadPessoa.pas' {frmCadPessoa},
  UdmPessoa in 'UdmPessoa.pas' {dtmPessoa: TDataModule},
  UdmConexao in 'UdmConexao.pas' {dtmConexao: TDataModule},
  UPesqPessoa in 'UPesqPessoa.pas' {frmPesqPessoa},
  uPesquisaCidade in 'uPesquisaCidade.pas' {frmPesqCidade},
  UdmCidade in 'UdmCidade.pas' {dtmCidade: TDataModule},
  uCadCidade in 'uCadCidade.pas' {frmCadCidade},
  uPessoa in '..\Armazem\source\Controller\uPessoa.pas',
  uLogin in 'uLogin.pas' {frmLogin},
  uHome in 'uHome.pas' {frmPrincipal},
  uGlobal in 'uGlobal.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdtmPessoa, dtmPessoa);
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.CreateForm(TdtmCidade, dtmCidade);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
