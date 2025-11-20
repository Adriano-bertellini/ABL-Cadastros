unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.StdCtrls;

type
  TformLogin = class(TForm)
    qryPrinc: TFDQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    imgLogo: TImage;
    pnlLogin: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    edtSenha: TEdit;
    edtNomeUsuario: TEdit;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formLogin: TformLogin;

implementation

uses uFormMain;

{$R *.dfm}

end.
