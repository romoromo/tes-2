unit Upendataanhotel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinSilver, dxSkinStardust, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGraphics, cxDBEdit, cxCurrencyEdit, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, StdCtrls, cxControls, cxContainer, cxEdit, cxGroupBox,
  ExtCtrls, ComCtrls, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, cxButtons, cxCheckBox, cxButtonEdit, dateutils;

type
  TFormPendataanHotel = class(TForm)
    ScrollBox1: TScrollBox;
    Panel5: TPanel;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label19: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    lookusahabu: TcxDBLookupComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxGroupBox3: TcxGroupBox;
    Label12: TLabel;
    Label21: TLabel;
    LblSptnama: TLabel;
    LblSptalamat: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    cxDateSPT: TcxDateEdit;
    cxDBComboBox3: TcxDBComboBox;
    Label10: TLabel;
    cxDBComboBox4: TcxDBComboBox;
    Label11: TLabel;
    cxDBComboBox5: TcxDBComboBox;
    Label14: TLabel;
    edbbungaspt: TcxDBCurrencyEdit;
    ejumlahhari: TcxDBMaskEdit;
    edbomsetharian: TcxDBCurrencyEdit;
    edbomsetbulanan: TcxDBCurrencyEdit;
    edbkeringanan: TcxDBMaskEdit;
    cxGroupBox4: TcxGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    cxDBComboBox6: TcxDBComboBox;
    datetahun: TDateTimePicker;
    datebulan: TDateTimePicker;
    datehari: TDateTimePicker;
    cxButton1: TcxButton;
    zqdataview: TZQuery;
    cxhari: TcxCheckBox;
    Panel3: TPanel;
    btsimpan: TcxButton;
    btkeluar: TcxButton;
    btcetak: TcxButton;
    dsdata: TDataSource;
    cxDateterimaspt: TcxDateEdit;
    cxDatebatasspt: TcxDateEdit;
    cxDateentryspt: TcxDateEdit;
    enopok: TcxMaskEdit;
    cxDatetglomzawal: TcxDateEdit;
    cxDatetglomzberakhir: TcxDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label7: TLabel;
    cxedtpajak: TcxCurrencyEdit;
    Label8: TLabel;
    Zqtabbdu: TZQuery;
    Label6: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    lblrekening: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dsdataStateChange(Sender: TObject);
    procedure btsimpanClick(Sender: TObject);
    procedure btkeluarClick(Sender: TObject);
    procedure cxDatetglomzberakhirPropertiesCloseUp(Sender: TObject);
    procedure edbomsetharianPropertiesChange(Sender: TObject);
    procedure edbomsetbulananPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edbomsetbulananExit(Sender: TObject);
    procedure edbomsetharianExit(Sender: TObject);
    procedure edbkeringananExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPendataanHotel: TFormPendataanHotel;
  pengaliandenda:integer;

implementation
uses uFormUtama,udatamodul,upilihrekening;

{$R *.dfm}

procedure TFormPendataanHotel.cxButton1Click(Sender: TObject);
var
strsql:string;
masaretri,masatest:TDate;
j:integer;
begin

 if cxhari.Checked then
  begin
    strsql:=' hrp ='+QuotedStr(FormatDateTime('dd',datehari.date))+' ';
  end else strsql:=' ';

with dm.ZQpendataan do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from "sptht" where nopok='+QuotedStr(enopok.Text)+' and thp='+QuotedStr(FormatDateTime('yy',datetahun.date))+' and blp='+QuotedStr(FormatDateTime('MM',datebulan.date))+strsql;
    open;
  end;
 with zqdataview do
  begin
   close;
   sql.Text:='select * from "wpr" where nopok='+QuotedStr(enopok.Text)+' ';
   open;
  end;


if dm.ZQpendataan.IsEmpty then
begin
  dm.ZQpendataan.Append;
  cxGroupBox1.Visible:=true;
  cxGroupBox4.Visible:=true;
  cxDatetglomzawal.Date:=DateOf(StartOfAMonth(StrToInt(FormatDateTime('yyyy',datetahun.Date)),StrToInt(FormatDateTime('MM',datebulan.Date))));
  cxDatetglomzberakhir.Date:=DateOf(EndOfAMonth(StrToInt(FormatDateTime('yyyy',datetahun.date)),StrToInt(FormatDateTime('MM',datebulan.Date))));
  cxDateSPT.Date:=DateOf(now());
  cxDateterimaspt.Date:=DateOf(now());
  cxDateentryspt.date:=DateOf(now());
  cxDatebatasspt.Date:=StrToDate('10/'+FormatDateTime('MM',datebulan.Date)+'/'+FormatDateTime('yyyy',datetahun.date));
  //============insert rekening
    if not zqdataview.IsEmpty then
  begin
    LblSptnama.Caption:=zqdataview.FieldByname('bnama').AsString;
    LblSptalamat.Caption:=zqdataview.FieldByname('bal').AsString;
       with Zqtabbdu do
        begin
         close;
         sql.Text:='SELECT "tblrek".*,  '+
         ' "CONCAT"("tblrek".URS,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PEM,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".ORG,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PRG,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".KGT,"CONCAT"('+quotedstr('.')+
',"CONCAT"("tblrek".DIN,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".BID,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PEND,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PAD,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PJK,"CONCAT"('+quotedstr('.')+
',"CONCAT"("tblrek".AYT,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".JEN,"CONCAT"('+quotedstr('.')+',"tblrek".SUB)))))))))))))))))))))))) AS rekening, '+
' "CONCAT"("tblrek".PEND,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PAD,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PJK,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".AYT,"CONCAT"('+quotedstr('.')+',"tblrek".JEN)))))))) as ayat '+
         ' FROM "tabbdu" INNER JOIN "tblrek" ON "tabbdu".PEND = "tblrek".PEND and "tabbdu".PAD = "tblrek".PAD AND "tabbdu".PJK = "tblrek".PJK AND "tabbdu".AYAT = "tblrek".AYT AND "tabbdu".JENIS = "tblrek".JEN '+
         ' where kdbu='+QuotedStr(zqdataview.FieldByname('BBU').AsString)+' ';
         open;
        end;
       dm.ZQpendataan.FieldByName('URS').AsString :=Zqtabbdu.fieldbyname('URS').AsString;
       dm.ZQpendataan.FieldByName('PEM').AsString :=Zqtabbdu.fieldbyname('PEM').AsString;
       dm.ZQpendataan.FieldByName('ORG').AsString :=Zqtabbdu.fieldbyname('ORG').AsString;
       dm.ZQpendataan.FieldByName('PRG').AsString :=Zqtabbdu.fieldbyname('PRG').AsString;
       dm.ZQpendataan.FieldByName('KGT').AsString :=Zqtabbdu.fieldbyname('KGT').AsString;
       dm.ZQpendataan.FieldByName('DIN').AsString :=Zqtabbdu.fieldbyname('DIN').AsString;
       dm.ZQpendataan.FieldByName('BID').AsString :=Zqtabbdu.fieldbyname('BID').AsString;
       dm.ZQpendataan.FieldByName('PEND').AsString :=Zqtabbdu.fieldbyname('PEND').AsString;
       dm.ZQpendataan.FieldByName('PAD').AsString :=Zqtabbdu.fieldbyname('PAD').AsString;
       dm.ZQpendataan.FieldByName('PJK').AsString :=Zqtabbdu.fieldbyname('PJK').AsString;
       dm.ZQpendataan.FieldByName('AYT').AsString :=Zqtabbdu.fieldbyname('AYT').AsString;
       dm.ZQpendataan.FieldByName('JEN').AsString :=Zqtabbdu.fieldbyname('JEN').AsString;
       dm.ZQpendataan.FieldByName('SUB').AsString :=Zqtabbdu.fieldbyname('SUB').AsString;
       dm.ZQpendataan.FieldByName('tarifpc').AsFloat:=Zqtabbdu.fieldbyname('pct').AsFloat;
       FormPendataanHotel.lblrekening.Caption:=Zqtabbdu.fieldbyname('nmrek').AsString;
       FormPendataanHotel.cxButtonEdit1.Text:=Zqtabbdu.fieldbyname('rekening').AsString;
  end; //zqdataview.IsEmpty
  //============insert rekening
  dm.ZQpendataan.FieldByName('jumhr').AsFloat:=cxDatetglomzberakhir.date-cxDatetglomzawal.Date;
  //============Hitung bulan Denda
  masaretri:=StrToDate(isikiri('10',2)+'/'+isikiri(FormatDateTime('M',datebulan.date),2)+'/'+FormatDateTime('yyyy',datetahun.date));
  j:=0;
  while IncMonth(masaretri-1,1)< cxDateterimaspt.Date do
  begin
  j:=j+1;
    masaretri:=IncMonth(masaretri-1,1);
  end;
  pengaliandenda:=j;
  //ShowMessage(inttostr(pengaliandenda));
  //============Hitung bulan Denda

end else
begin
ShowMessage('SPT Sudah pernah Diinputkan....');
  cxGroupBox1.Visible:=false;
  cxGroupBox4.Visible:=false;
end;//pendaataan is empty

end;

procedure TFormPendataanHotel.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
  refrekeningparam:string;
begin

if not formexists('formpilihrekening') then
formpilihrekening := Tformpilihrekening.create(nil);
formpilihrekening.BringToFront;

refrekeningparam := ' and refrekening_kode like "4.1.1.1%" ';
formpilihrekening.refrekening.Close;
{formpilihrekening.refrekening.SQL.Text :=' SELECT tblrek.*, '+
//' SELECT tblrek.URS,tblrek.PEM,tblrek.ORG,tblrek.PRG,tblrek.KGT,tblrek.DIN,tblrek.BID,tblrek.PEND,tblrek.PAD,tblrek.PJK,tblrek.AYT,tblrek.JEN,tblrek.SUB,tblrek.NMREK, '+
' concat(tblrek.URS,".",tblrek.PEM,".",tblrek.ORG,".",tblrek.PRG,".",tblrek.KGT,".",tblrek.DIN,".",tblrek.BID,".",tblrek.PEND,".",tblrek.PAD,".",tblrek.PJK,".",tblrek.AYT,".",tblrek.JEN,".",tblrek.SUB) as rekening, '+
' concat(tblrek.PEND,".",tblrek.PAD,".",tblrek.PJK,".",tblrek.AYT,".",tblrek.JEN) as ayat  '+
//' FROM tblrek having tblrek.NMREK<>'+QuotedStr('')+' and ayat like "4.1.1.1.%" ';}

formpilihrekening.refrekening.SQL.Text:=' SELECT "tblrek".*, '+
' "CONCAT"("tblrek".URS,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PEM,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".ORG,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PRG,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".KGT,"CONCAT"('+quotedstr('.')+
',"CONCAT"("tblrek".DIN,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".BID,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PEND,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PAD,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PJK,"CONCAT"('+quotedstr('.')+
',"CONCAT"("tblrek".AYT,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".JEN,"CONCAT"('+quotedstr('.')+',"tblrek".SUB)))))))))))))))))))))))) AS rekening, '+
' "CONCAT"(PEND,"CONCAT"('+quotedstr('.')+',"CONCAT"(PAD,"CONCAT"('+quotedstr('.')+',"CONCAT"(PJK,"CONCAT"('+quotedstr('.')+',"CONCAT"(AYT,"CONCAT"('+quotedstr('.')+',JEN)))))))) as ayat '+
' FROM "tblrek" where "tblrek".NMREK IS NOT NULL and '+
' "CONCAT"(PEND,"CONCAT"('+quotedstr('.')+',"CONCAT"(PAD,"CONCAT"('+quotedstr('.')+',"CONCAT"(PJK,"CONCAT"('+quotedstr('.')+',"CONCAT"(AYT,"CONCAT"('+quotedstr('.')+',JEN)))))))) like '+QuotedStr('4.1.1.1.%');
//Memo1.Lines.Add(formpilihrekening.refrekening.SQL.Text);
formpilihrekening.refrekening.Open;
end;

procedure TFormPendataanHotel.dsdataStateChange(Sender: TObject);
begin
 if dm.ZQpendataan.State in [dsbrowse] then
   begin
   btcetak.Enabled := true;
   btsimpan.Caption := '&Baru';
   btkeluar.Caption := '&Keluar';
   //eform.Properties.ReadOnly := true;
   //eform.Style.Color := clcream;
   end;
if dm.ZQpendataan.State in [dsinsert] then
   begin
   btcetak.Enabled := false;
   //eform.Properties.ReadOnly := false;
   //eform.Style.Color := clwhite;
   btsimpan.caption := '&Simpan';
   //btkeluar.Caption := '&Batal';
   end;
if dm.ZQpendataan.State in [dsedit] then
   begin
   btcetak.Enabled := false;
   //eform.Properties.ReadOnly := true;
   //eform.Style.Color := clcream;
   btsimpan.caption := '&Simpan';
   //btkeluar.Caption := '&Batal';
   end;

end;

procedure TFormPendataanHotel.btsimpanClick(Sender: TObject);
begin
if btsimpan.Caption = '&Simpan' then
  begin
        if cxDatetglomzawal.Text<>'' then
  begin
    dm.ZQpendataan.FieldByName('thmuj').AsString:=FormatDateTime('yy',cxDatetglomzawal.Date);
    dm.ZQpendataan.FieldByName('blmuj').AsString:=FormatDateTime('M',cxDatetglomzawal.Date);
    dm.ZQpendataan.FieldByName('hrmuj').AsString:=FormatDateTime('dd',cxDatetglomzawal.Date);
  end;
        if cxDatetglomzberakhir.Text<>'' then
  begin
    dm.ZQpendataan.FieldByName('thakj').AsString:=FormatDateTime('yy',cxDatetglomzberakhir.Date);
    dm.ZQpendataan.FieldByName('blakj').AsString:=FormatDateTime('M',cxDatetglomzberakhir.Date);
    dm.ZQpendataan.FieldByName('hrakj').AsString:=FormatDateTime('dd',cxDatetglomzberakhir.Date);
  end;
        if cxDateSPT.Text<>'' then
  begin
    dm.ZQpendataan.FieldByName('thspt').AsString:=FormatDateTime('yy',cxDateSPT.Date);
    dm.ZQpendataan.FieldByName('blspt').AsString:=FormatDateTime('M',cxDateSPT.Date);
    dm.ZQpendataan.FieldByName('hrspt').AsString:=FormatDateTime('dd',cxDateSPT.Date);
  end;
      if cxDateterimaspt.Text<>'' then
  begin
    dm.ZQpendataan.FieldByName('thtspt').AsString:=FormatDateTime('yy',cxDateterimaspt.Date);
    dm.ZQpendataan.FieldByName('bltspt').AsString:=FormatDateTime('M',cxDateterimaspt.Date);
    dm.ZQpendataan.FieldByName('hrtspt').AsString:=FormatDateTime('dd',cxDateterimaspt.Date);
  end;
    if cxDatebatasspt.Text<>'' then
  begin
    dm.ZQpendataan.FieldByName('thbspt').AsString:=FormatDateTime('yy',cxDatebatasspt.Date);
    dm.ZQpendataan.FieldByName('blbspt').AsString:=FormatDateTime('M',cxDatebatasspt.Date);
    dm.ZQpendataan.FieldByName('hrbspt').AsString:=FormatDateTime('dd',cxDatebatasspt.Date);
  end;
    if cxDateentryspt.Text<>'' then
  begin
    dm.ZQpendataan.FieldByName('thespt').AsString:=FormatDateTime('yy',cxDateentryspt.Date);
    dm.ZQpendataan.FieldByName('blespt').AsString:=FormatDateTime('M',cxDateentryspt.Date);
    dm.ZQpendataan.FieldByName('hrespt').AsString:=FormatDateTime('dd',cxDateentryspt.Date);
  end;
  dm.ZQpendataan.FieldByName('nopok').AsString:=enopok.Text;
  dm.ZQpendataan.FieldByName('thp').AsString:=FormatDateTime('yy',datetahun.Date);
  dm.ZQpendataan.FieldByName('blp').AsString:=FormatDateTime('M',datebulan.Date);

  if cxhari.Checked then
   begin
     dm.ZQpendataan.FieldByName('hrp').AsString:=FormatDateTime('dd',datetahun.Date);
   end;
     dm.ZQpendataan.FieldByName('pr').AsString:=zqdataview.FieldByName('pr').AsString;
     dm.ZQpendataan.FieldByName('gol').AsString:=zqdataview.FieldByName('gol').AsString;
     dm.ZQpendataan.FieldByName('kec').AsString:=zqdataview.FieldByName('bkec').AsString;
     dm.ZQpendataan.FieldByName('kel').AsString:=zqdataview.FieldByName('bkel').AsString;
     dm.ZQpendataan.FieldByName('pajak').AsFloat:=edbomsetbulanan.Value*(dm.ZQpendataan.FieldByName('tarifpc').AsFloat/100);
     //dm.ZQpendataan.FieldByName('buspt').AsFloat:='';


  dm.ZQpendataan.Post;
  end// simpan
    else if btsimpan.Caption = '&Baru' then
  begin
  cxButtonEdit1.Text:='';
  LblSptnama.Caption:='';
  LblSptalamat.Caption:='';
  lblrekening.Caption:='Rekening';
  enopok.Text:='';
  cxedtpajak.Value:=0;
  if not dm.ZQpendataan.Active then dm.ZQpendataan.Open;
  dm.ZQpendataan.Last;
  dm.ZQpendataan.Append;
  ScrollBox1.VertScrollBar.Position := 1;
  updatestatus('',false);
  end;
end;

procedure TFormPendataanHotel.btkeluarClick(Sender: TObject);
begin
close;
end;

procedure TFormPendataanHotel.cxDatetglomzberakhirPropertiesCloseUp(
  Sender: TObject);
  var s:real;
begin

if (edbomsetharian.Text<>'') or (edbomsetharian.Text<>'0') then
 begin
  if cxDatetglomzawal.Text<>'' then
   begin
    dm.ZQpendataan.FieldByName('jumhr').AsFloat:=cxDatetglomzberakhir.date-cxDatetglomzawal.Date;
   end;
 end;//(edbomsetharian.Text<>'')

end;

procedure TFormPendataanHotel.edbomsetharianPropertiesChange(
  Sender: TObject);
begin
 if (edbomsetharian.Text<>'') and (edbomsetbulanan.Enabled=true) then
  begin
    edbomsetbulanan.Enabled:=false;
    end;
    if edbomsetharian.Text='' then  edbomsetbulanan.Enabled:=true;

end;

procedure TFormPendataanHotel.edbomsetbulananPropertiesChange(
  Sender: TObject);
begin
 if (edbomsetbulanan.Text<>'') and (edbomsetharian.Enabled=true) then
  begin
    edbomsetharian.Enabled:=false;
  end;
  if edbomsetbulanan.Text='' then  edbomsetharian.Enabled:=true;

end;

procedure TFormPendataanHotel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFormPendataanHotel.edbomsetbulananExit(Sender: TObject);
var
keringanan,bungaspt:Real;
begin
if edbomsetbulanan.Value>0 then
begin
if edbkeringanan.Text<>'' then
begin
  keringanan:=(1-(StrToInt(edbkeringanan.text)/100));
  dm.ZQpendataan.FieldByName('RPRING').AsFloat:=(edbomsetbulanan.Value*(dm.ZQpendataan.FieldByName('tarifpc').AsFloat/100)*(strtoint(edbkeringanan.Text)/100));
end else keringanan:=1;
if pengaliandenda>0 then
begin
  bungaspt:=pengaliandenda*(2/100)*edbomsetbulanan.Value*(dm.ZQpendataan.FieldByName('tarifpc').AsFloat/100);
end else bungaspt:=0;

     dm.ZQpendataan.FieldByName('BUNGARP').AsFloat:=bungaspt;
     cxedtpajak.Value:=(edbomsetbulanan.Value*(dm.ZQpendataan.FieldByName('tarifpc').AsFloat/100)*keringanan)+(bungaspt);

     dm.ZQpendataan.FieldByName('PAJAK').AsFloat:=(edbomsetbulanan.Value*(dm.ZQpendataan.FieldByName('tarifpc').AsFloat/100)*(keringanan))+(bungaspt);
end;  //edbomsetharian.Value>0
end;

procedure TFormPendataanHotel.edbomsetharianExit(Sender: TObject);
var
keringanan,bungaspt:Real;
begin
if edbomsetharian.Value>0 then
begin

if edbkeringanan.Text<>'' then
begin
  keringanan:=(1-(StrToInt(edbkeringanan.text)/100));
  dm.ZQpendataan.FieldByName('RPRING').AsFloat:=((edbomsetharian.Value*strtoint(ejumlahhari.text))*(dm.ZQpendataan.FieldByName('tarifpc').AsFloat/100)*(strtoint(edbkeringanan.Text)/100));
end else keringanan:=1;
if pengaliandenda>0 then
begin
  bungaspt:=pengaliandenda*(2/100)*(edbomsetharian.Value*strtoint(ejumlahhari.text))*(dm.ZQpendataan.FieldByName('tarifpc').AsFloat/100);
end else bungaspt:=0;

     dm.ZQpendataan.FieldByName('BUNGARP').AsFloat:=bungaspt;
     cxedtpajak.Value:=((edbomsetharian.Value*strtoint(ejumlahhari.text))*(dm.ZQpendataan.FieldByName('tarifpc').AsFloat/100)*keringanan)+(bungaspt);

     dm.ZQpendataan.FieldByName('PAJAK').AsFloat:=((edbomsetharian.Value*strtoint(ejumlahhari.text))*(dm.ZQpendataan.FieldByName('tarifpc').AsFloat/100)*(keringanan))+(bungaspt);
end; //edbomsetharian.Value>0
end;


procedure TFormPendataanHotel.edbkeringananExit(Sender: TObject);
begin
 if edbomsetharian.Value>0 then
   begin
     edbomsetharianExit(self);
   end else if edbomsetbulanan.Value>0 then edbomsetbulananExit(self);

end;

procedure TFormPendataanHotel.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
begin
Key := #0;
{ check if SHIFT - Key is pressed }
if GetKeyState(VK_Shift) and $8000 <> 0 then
PostMessage(Handle, WM_NEXTDLGCTL, 1, 0)
else
PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;

end;

end.
