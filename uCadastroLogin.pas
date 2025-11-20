unit uCadastroLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.StdCtrls;

type
  TformCadastro = class(TForm)
    Panel2: TPanel;
    pnlLogin: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    edtSenha: TEdit;
    edtNomeUsuario: TEdit;
    Panel3: TPanel;
    btnLogin: TSpeedButton;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    imgLogo: TImage;
    procedure btnLoginClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    contagemLogin: Integer;
  public
    { Public declarations }
  end;

var
  formCadastro: TformCadastro;

implementation

{$R *.dfm}

procedure TformCadastro.btnLoginClick(Sender: TObject);
begin
  // Validações do Login.
  try
    for contagemLogin := 0 to 3 do
    begin
      // Validação Login
      if Trim(edtSenha.Text) = ''  then
        raise Exception.Create('Por favor, preencha um Login');

      // Validação senha
      if Trim(edtSenha.Text) = ''  then
        raise Exception.Create('Por favor, preencha uma senha!');

      if contagemLogin = 3 then
      begin
        raise Exception.Create('Tentativas de login excedidas!');
      end;
    end;

  finally
    if contagemLogin = 3 then
    begin
      formCadastro.Close;
    end;
  end;
end;

procedure TformCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  formCadastro := nil;
end;

procedure TformCadastro.FormCreate(Sender: TObject);
begin
  contagemLogin := 0;
end;

end.
