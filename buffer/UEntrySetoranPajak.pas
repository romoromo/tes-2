unit UEntrySetoranPajak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  cxGraphics, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBLookupComboBox, cxDropDownEdit,
  cxSpinEdit, ComCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxMemo, cxDBEdit, cxTextEdit, StdCtrls, cxContainer, cxGroupBox, ExtCtrls,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxCurrencyEdit, cxCalendar,
  cxButtonEdit, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxLabel,
  cxDBLabel, cxCheckBox;

type
  TFormEntrySetoranPajak = class(TForm)
    ScrollBox1: TScrollBox;
    Panel5: TPanel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    Label13: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    datetahun: TDateTimePicker;
    datebulan: TDateTimePicker;
    datehari: TDateTimePicker;
    cxSpinEdit1: TcxSpinEdit;
    cxComboBox1: TcxComboBox;
    Panel3: TPanel;
    btsimpan: TcxButton;
    btkeluar: TcxButton;
    btcetak: TcxButton;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    lblrekening: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    dateentryspt: TcxDateEdit;
    Label39: TLabel;
    datebatasspt: TcxDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDateSTPD: TcxDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    cxDateEdit2: TcxDateEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    cxDateEdit3: TcxDateEdit;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    Label40: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBMaskEdit3: TcxDBMaskEdit;
    Label41: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    ZQpenyetoranview: TZQuery;
    Dsdata: TDataSource;
    DsPenyetoranview: TDataSource;
    cxButton1: TcxButton;
    cxhari: TcxCheckBox;
    enopok: TcxMaskEdit;
    cxCheckBox1: TcxCheckBox;
    ZQrekening: TZQuery;
    Label42: TLabel;
    cxrpbunga: TcxCurrencyEdit;
    cxrpdenda: TcxCurrencyEdit;
    cxrptotalsetoran: TcxCurrencyEdit;
    cxDBComboBox1: TcxDBComboBox;
    cxDateKB: TcxDateEdit;
    Label43: TLabel;
    cxComboBox2: TcxComboBox;
    lblnmtabel: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure enopokKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btsimpanClick(Sender: TObject);
    procedure btkeluarClick(Sender: TObject);
    procedure DsdataStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEntrySetoranPajak: TFormEntrySetoranPajak;

implementation
uses UformUtama,udatamodul;

{$R *.dfm}

procedure TFormEntrySetoranPajak.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFormEntrySetoranPajak.cxButton1Click(Sender: TObject);
var
strsql,namatabel:string;
masaretri,masatest:TDate;
j:integer;
begin
{if cxCheckBox1.Checked then
begin
namatabel:='sptrm';
end else namatabel:='sptht';}
namatabel:=lblnmtabel.Caption;
label42.Visible:=false;
cxButton1.Enabled:=false;
cxrpbunga.Value:=0;
cxrpdenda.Value:=0;
cxrptotalsetoran.Value:=0;
   if cxhari.Checked then
  begin
    strsql:=' hrp ='+QuotedStr(FormatDateTime('dd',datehari.date))+' ';
  end else strsql:=' ';

with dm.ZQpenyetoran do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from "'+namatabel+'" where nopok='+QuotedStr(enopok.Text)+' and thp='+QuotedStr(FormatDateTime('yy',datetahun.date))+' and blp='+QuotedStr(FormatDateTime('MM',datebulan.date))+strsql;
    open;
  end;

  if dm.ZQpenyetoran.IsEmpty then
    begin
      ShowMessage('Referensi belum terdaftar...!!!');
      exit;
    end;

 with ZQpenyetoranview do
  begin
   close;
      sql.Text:='select * from "wpr" where nopok='+QuotedStr(enopok.Text)+' ';
{   sql.Text:=' SELECT "wpr".NOPOK,BNAMA,BAL,BBU,PNAMA,PAL, '+
   ' "'+namatabel+'".* FROM "wpr" INNER JOIN "sptht" ON "wpr".NOPOK = "sptht".NOPOK '+
   ' where "wpr".NOPOK='+QuotedStr(enopok.Text)+' ';}
   open;
  end;

if dm.ZQpenyetoran.FieldByName('rpssp').Asstring<>'' then
begin
    if dm.ZQpenyetoran.FieldByName('rpssp').Asfloat>0 then
  begin
  updatestatus('Data SSPD sudah pernah di inputkan...!!!',true);
     //ShowMessage('Data SSPD sudah pernah di inputkan...!!!');
     //=================hitung pembayaran
    if (dm.ZQpenyetoran.FieldByName('thespt').AsString<>'') and (dm.ZQpenyetoran.FieldByName('blespt').AsString<>'') and (dm.ZQpenyetoran.FieldByName('hrespt').AsString<>'') then
  begin
  dateentryspt.Date:= StrToDate(isikiri(dm.ZQpenyetoran.FieldByName('hrespt').AsString,2)+'/'+isikiri(dm.ZQpenyetoran.FieldByName('blespt').AsString,2)+'/20'+isikiri(dm.ZQpenyetoran.FieldByName('thespt').AsString,2));
  end;

    if (dm.ZQpenyetoran.FieldByName('thbspt').AsString<>'') and (dm.ZQpenyetoran.FieldByName('blbspt').AsString<>'') and (dm.ZQpenyetoran.FieldByName('hrbspt').AsString<>'') then
  begin
  datebatasspt.Date:= StrToDate(isikiri(dm.ZQpenyetoran.FieldByName('hrbspt').AsString,2)+'/'+isikiri(dm.ZQpenyetoran.FieldByName('blbspt').AsString,2)+'/20'+isikiri(dm.ZQpenyetoran.FieldByName('thbspt').AsString,2));
  end;


  if cxComboBox1.Text='SKPD' then
    begin
       cxrpbunga.Value:=dm.ZQpenyetoran.fieldbyname('BUSPT').AsFloat;
       cxrpdenda.Value:=0;
       cxrptotalsetoran.Value:=cxrpbunga.Value+dm.ZQpenyetoran.fieldbyname('pajak').AsFloat;
    end else
  if cxComboBox1.Text='STPD' then
    begin
      if (dm.ZQpenyetoran.FieldByName('thstp').AsString<>'0') and (dm.ZQpenyetoran.FieldByName('blstp').AsString<>'0') and (dm.ZQpenyetoran.FieldByName('hrstp').AsString<>'0') then
  begin
  cxDateSTPD.Date:= StrToDate(isikiri(dm.ZQpenyetoran.FieldByName('hrstp').AsString,2)+'/'+isikiri(dm.ZQpenyetoran.FieldByName('blstp').AsString,2)+'/20'+isikiri(dm.ZQpenyetoran.FieldByName('thstp').AsString,2));
  end;
       cxrpbunga.Value:=dm.ZQpenyetoran.fieldbyname('bustp').AsFloat;
       cxrpdenda.Value:=0;
       cxrptotalsetoran.Value:=cxrpbunga.Value+dm.ZQpenyetoran.fieldbyname('pajak').AsFloat;
    end else
  if cxComboBox1.Text='KB' then
    begin
  if (dm.ZQpenyetoran.FieldByName('thkb').AsString<>'') and (dm.ZQpenyetoran.FieldByName('blkb').AsString<>'') and (dm.ZQpenyetoran.FieldByName('hrkb').AsString<>'') then
  begin
  cxDateKB.Date:= StrToDate(isikiri(dm.ZQpenyetoran.FieldByName('hrkb').AsString,2)+'/'+isikiri(dm.ZQpenyetoran.FieldByName('blkb').AsString,2)+'/20'+isikiri(dm.ZQpenyetoran.FieldByName('thkb').AsString,2));
  end;
       cxrpbunga.Value:=dm.ZQpenyetoran.fieldbyname('bukb').AsFloat;
       cxrpdenda.Value:=0;
       cxrptotalsetoran.Value:=cxrpbunga.Value+dm.ZQpenyetoran.fieldbyname('pajak').AsFloat;
    end;
//=================hitung pembayaran
     label42.Visible:=true;
     exit;
  end else dm.ZQpenyetoran.Edit;
end else begin   dm.ZQpenyetoran.Edit;cxButton1.Enabled:=true; end;

  //============insert rekening
    if not ZQpenyetoranview.IsEmpty then
  begin
    //LblSptnama.Caption:=zqdataview.FieldByname('bnama').AsString;
    //LblSptalamat.Caption:=zqdataview.FieldByname('bal').AsString;
       with ZQrekening do
        begin
         close;
         sql.Text:='SELECT "tblrek".*,  '+
         ' "CONCAT"("tblrek".URS,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PEM,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".ORG,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PRG,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".KGT,"CONCAT"('+quotedstr('.')+
',"CONCAT"("tblrek".DIN,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".BID,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PEND,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PAD,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PJK,"CONCAT"('+quotedstr('.')+
',"CONCAT"("tblrek".AYT,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".JEN,"CONCAT"('+quotedstr('.')+',"tblrek".SUB)))))))))))))))))))))))) AS rekening, '+
' "CONCAT"("tblrek".PEND,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PAD,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PJK,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".AYT,"CONCAT"('+quotedstr('.')+',"tblrek".JEN)))))))) as ayat '+
         ' FROM "tabbdu" INNER JOIN "tblrek" ON "tabbdu".PEND = "tblrek".PEND and "tabbdu".PAD = "tblrek".PAD AND "tabbdu".PJK = "tblrek".PJK AND "tabbdu".AYAT = "tblrek".AYT AND "tabbdu".JENIS = "tblrek".JEN '+
         ' where kdbu='+QuotedStr(ZQpenyetoranview.FieldByname('BBU').AsString)+' ';
         open;
        end;
       lblrekening.Caption:=ZQrekening.fieldbyname('nmrek').AsString;
       cxButtonEdit1.Text:=ZQrekening.fieldbyname('rekening').AsString;
//=================hitung pembayaran
    if (dm.ZQpenyetoran.FieldByName('thespt').AsString<>'') and (dm.ZQpenyetoran.FieldByName('blespt').AsString<>'') and (dm.ZQpenyetoran.FieldByName('hrespt').AsString<>'') then
  begin
  dateentryspt.Date:= StrToDate(isikiri(dm.ZQpenyetoran.FieldByName('hrespt').AsString,2)+'/'+isikiri(dm.ZQpenyetoran.FieldByName('blespt').AsString,2)+'/20'+isikiri(dm.ZQpenyetoran.FieldByName('thespt').AsString,2));
  end;

    if (dm.ZQpenyetoran.FieldByName('thbspt').AsString<>'') and (dm.ZQpenyetoran.FieldByName('blbspt').AsString<>'') and (dm.ZQpenyetoran.FieldByName('hrbspt').AsString<>'') then
  begin
  datebatasspt.Date:= StrToDate(isikiri(dm.ZQpenyetoran.FieldByName('hrbspt').AsString,2)+'/'+isikiri(dm.ZQpenyetoran.FieldByName('blbspt').AsString,2)+'/20'+isikiri(dm.ZQpenyetoran.FieldByName('thbspt').AsString,2));
  end;


  if cxComboBox1.Text='SKPD' then
    begin
       cxrpbunga.Value:=dm.ZQpenyetoran.fieldbyname('BUSPT').AsFloat;
       cxrpdenda.Value:=0;
       cxrptotalsetoran.Value:=cxrpbunga.Value+dm.ZQpenyetoran.fieldbyname('pajak').AsFloat;
    end else
  if cxComboBox1.Text='STPD' then
    begin
      if (dm.ZQpenyetoran.FieldByName('thstp').AsString<>'0') and (dm.ZQpenyetoran.FieldByName('blstp').AsString<>'0') and (dm.ZQpenyetoran.FieldByName('hrstp').AsString<>'0') then
  begin
  cxDateSTPD.Date:= StrToDate(isikiri(dm.ZQpenyetoran.FieldByName('hrstp').AsString,2)+'/'+isikiri(dm.ZQpenyetoran.FieldByName('blstp').AsString,2)+'/20'+isikiri(dm.ZQpenyetoran.FieldByName('thstp').AsString,2));
  end;
       cxrpbunga.Value:=dm.ZQpenyetoran.fieldbyname('bustp').AsFloat;
       cxrpdenda.Value:=0;
       cxrptotalsetoran.Value:=cxrpbunga.Value+dm.ZQpenyetoran.fieldbyname('pajak').AsFloat;
    end else
  if cxComboBox1.Text='KB' then
    begin
  if (dm.ZQpenyetoran.FieldByName('thkb').AsString<>'') and (dm.ZQpenyetoran.FieldByName('blkb').AsString<>'') and (dm.ZQpenyetoran.FieldByName('hrkb').AsString<>'') then
  begin
  cxDateKB.Date:= StrToDate(isikiri(dm.ZQpenyetoran.FieldByName('hrkb').AsString,2)+'/'+isikiri(dm.ZQpenyetoran.FieldByName('blkb').AsString,2)+'/20'+isikiri(dm.ZQpenyetoran.FieldByName('thkb').AsString,2));
  end;
       cxrpbunga.Value:=dm.ZQpenyetoran.fieldbyname('bukb').AsFloat;
       cxrpdenda.Value:=0;
       cxrptotalsetoran.Value:=cxrpbunga.Value+dm.ZQpenyetoran.fieldbyname('pajak').AsFloat;
    end;
//=================hitung pembayaran

  end; //zqdataview.IsEmpty
  //============insert rekening


end;


procedure TFormEntrySetoranPajak.enopokKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key=13 then
  begin
    cxButton1Click(self);
  end;
  //untuk selain reklame
{SELECT THP,BLP,HRP,KE,PR,GOL,NOPOK,KEC,KEL,PEND,PAD,PJK,AYT,JEN,SUB,BU,RPOMZ,TARIFPC,TARIFRP,BUNGAPC,BUNGARP,PCRING,RPRING,PAJAK,
THSPT,BLSPT,HRSPT,AYSPT,NOSPT,KESPT,BUSPT,THSKP,BLSKP,HRSKP,AYSKP,NOSKP,NOUSKP,KESKP,RPSKP,
RPSSKP,HRPER,BLPER,THPER,NOPER,RPOMP,PAJAKP,RPSPER,
THKB,BLKB,HRKB,AYKB,NOKB,NOUKB,KEKB,OMKB,PAKB,NAKB,BAKB,BUKB,ADKB,RPKB,LAPKB,NOSKB,RPSKB,
THSSP,BLSSP,HRSSP,AYSSP,NOSSP,KESSP,RPSSP,TPSET,LUNAS,THESSP,BLESSP,HRESSP,
THSTP,BLSTP,HRSTP,AYSTP,NOSTP,KESTP,BASTP,BUSTP,DESTP,NASTP,ADSTP,RPSTP,THBSTP,BLBSTP,HRBSTP,THTSTP,BLTSTP,HRTSTP,THGSTP,BLGSTP,HRGSTP,NOGSTP,THPSTP,BLPSTP,HRPSTP,NOPSTP,THSSTP,BLSSTP,HRSSTP,NOSSTP,RPSSTP
FROM
"sptht"}
  //untuk reklame
{SELECT THP,BLP,HRP,KE,PR,GOL,NOPOK,KEC,KEL,PEND,PAD,PJK,AYT,JEN,SUB,BU,TARIFPC,TARIFRP,BUNGAPC,BUNGARP,PAJAK,
THSPT,BLSPT,HRSPT,NOSPT,THSKP,BLSKP,HRSKP,NOSKP,NOUSKP,RPSKP,
RPSSKP,HRPER,BLPER,THPER,NOPER,RPSPER,
THKB,BLKB,HRKB,NOKB,NOUKB,KEKB,OMKB,PAKB,NAKB,BAKB,BUKB,ADKB,RPKB,LAPKB,NOSKB,RPSKB,
THSSP,BLSSP,HRSSP,AYSSP,NOSSP,KESSP,RPSSP,TPSET,LUNAS,THESSP,BLESSP,HRESSP,
THSTP,BLSTP,HRSTP,AYSTP,NOSTP,KESTP,BASTP,BUSTP,DESTP,NASTP,ADSTP,RPSTP,THBSTP,BLBSTP,HRBSTP,THTSTP,BLTSTP,HRTSTP,THGSTP,BLGSTP,HRGSTP,NOGSTP,THPSTP,BLPSTP,HRPSTP,NOPSTP,THSSTP,BLSSTP,HRSSTP,NOSSTP,RPSSTP
FROM
sptre} //RPOMZ,PCRING,RPRING,AYSPT,KESKP,KESPT,BUSPT,AYSKP,RPOMP,PAJAKP,AYKB,
end;

procedure TFormEntrySetoranPajak.btsimpanClick(Sender: TObject);
begin
//insert into setor
if dm.ZQpenyetoran.State in [dsedit,dsinsert] then
begin
        if cxDateEdit2.Text<>'' then
  begin
    dm.ZQpenyetoran.FieldByName('thssp').AsString:=FormatDateTime('yy',cxDateEdit2.Date);
    dm.ZQpenyetoran.FieldByName('blssp').AsString:=FormatDateTime('M',cxDateEdit2.Date);
    dm.ZQpenyetoran.FieldByName('hrssp').AsString:=FormatDateTime('dd',cxDateEdit2.Date);
  end;
          if cxDateEdit2.Text<>'' then
  begin
    dm.ZQpenyetoran.FieldByName('thessp').AsString:=FormatDateTime('yy',cxDateEdit2.Date);
    dm.ZQpenyetoran.FieldByName('blessp').AsString:=FormatDateTime('M',cxDateEdit2.Date);
    dm.ZQpenyetoran.FieldByName('hressp').AsString:=FormatDateTime('dd',cxDateEdit2.Date);
  end;
  dm.ZQpenyetoran.FieldByName('rpssp').AsFloat:=dm.ZQpenyetoran.fieldByname('pajak').AsFloat;
 dm.ZQpenyetoran.Post;
 end;
//post edited data

end;

procedure TFormEntrySetoranPajak.btkeluarClick(Sender: TObject);
begin
close;
end;

procedure TFormEntrySetoranPajak.DsdataStateChange(Sender: TObject);
begin
   if dm.ZQpenyetoran.State in [dsedit,dsinsert] then btsimpan.Enabled:=true else  btsimpan.Enabled:=false;
end;

end.
