unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Soap.EncdDecd, System.NetEncoding;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    gzip: TMemo;
    GroupBox2: TGroupBox;
    retorno: TMemo;
    Button1: TButton;
    GroupBox3: TGroupBox;
    base64: TMemo;
    GroupBox4: TGroupBox;
    Memo1: TMemo;
    GroupBox5: TGroupBox;
    Memo2: TMemo;
    GroupBox6: TGroupBox;
    Memo3: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure Limpar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  ZLibExGZ, EncdDecd;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var Ret: WideString; Parte1, Parte2: WideString;
begin
  Limpar;
  Ret := Trim(gzip.text);
  base64.Text := Soap.EncdDecd.DecodeString(Ret);
  retorno.Lines.Add(ZLibExGZ.GZDecompressStr(Soap.EncdDecd.DecodeString(Ret)));
end;

procedure TForm1.Button2Click(Sender: TObject);
var Str: WideString; StrComp: WideString;
begin
  Limpar;
  gzip.Clear;
  Str := Trim(Memo1.Text);
  StringReplace(Str, #13#10, '', [rfReplaceAll]);
  Memo2.Text := ZLibExGZ.GZCompressStr(Str);
  StrComp    := ZLibExGZ.GZCompressStr(Str);
  Memo3.Text := Soap.EncdDecd.EncodeString(StrComp);
  gzip.text  := Soap.EncdDecd.EncodeString(StrComp);
end;

procedure TForm1.Limpar;
begin
 base64.Clear;
 retorno.Clear;
 Memo2.Clear;
 Memo3.Clear;
end;

end.
