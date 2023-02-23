unit penetapanABTcari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinsDefaultPainters, cxGraphics, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, StdCtrls,
  cxControls, cxContainer, cxEdit, cxGroupBox, Menus, cxButtons, DB,
  DBAccess, MyAccess, MemDS, cxCalendar, dxSkinCaramel, dxSkinCoffee,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver,
  dxSkinStardust, dxSkinValentine, dxSkinXmas2008Blue, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxDBEdit,strutils, ComCtrls, cxLabel,
  cxDBLabel, DBCtrls, cxCheckBox;

type
  TfpenetapanABTcari = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    btreset: TcxButton;
    btcari: TcxButton;
    btkeluar: TcxButton;
    cxButton1: TcxButton;
    ZQbadanusaha: TZQuery;
    dsbadanusaha: TDataSource;
    ZQuery1: TZQuery;
    Label12: TLabel;
    datetahun: TDateTimePicker;
    datebulan: TDateTimePicker;
    enomornota: TcxMaskEdit;
    Label31: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxDateentryspt: TcxDateEdit;
    Label2: TLabel;
    cxDateentryskpt: TcxDateEdit;
    Qkecamatan: TZQuery;
    Dskecamatan: TDataSource;
    Label3: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    KODE: TcxComboBox;
    cxCheckmanual: TcxCheckBox;
    procedure btkeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lookkecPropertiesChange(Sender: TObject);
    procedure cxLookupComboBox3PropertiesChange(Sender: TObject);
    procedure cari;
    procedure btcariClick(Sender: TObject);
    procedure btresetClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpenetapanABTcari: TfpenetapanABTcari;

implementation
uses udatamodul,uformutama, pendaftarangrid, pendaftarancari, penetapangrid;

{$R *.dfm}

procedure TfpenetapanABTcari.btkeluarClick(Sender: TObject);
begin
  close;
end;

procedure TfpenetapanABTcari.FormShow(Sender: TObject);
begin
  formutama.Enabled := false;
  ZQbadanusaha.Open;

end;

procedure TfpenetapanABTcari.lookkecPropertiesChange(Sender: TObject);
begin
  //zqkecamatan.Locate('tmkecamatan_kode',lookkec.EditValue,[]);
end;

procedure TfpenetapanABTcari.cxLookupComboBox3PropertiesChange(
  Sender: TObject);
begin
  //zqkecamatanbu.Locate('tmkecamatan_kode',lookkecbu.EditValue,[]);
end;

procedure TfpenetapanABTcari.cari;
var
   i:integer;
   param1,
   param2,
   param3,
   param4,
   param5,
   param6,
   param7,
   param8,
   param9,
   param10,
   sql,str,strnomor,nmtabel : string;

begin
//  if (lblpenanda.Caption='0') or (lblpenanda.Caption='2') then
nmtabel:='sptre';
str:=' SELECT "wpr".NOPOK,thp,blp,hrp,ke,"wpr".BNAMA,"wpr".BAL,PAJAK,"wpr".PNAMA,"wpr".GOL, '+
' KEC,KEL,VOLUM,TARIFPC,TARIFRP,HRGA AS HARGA, '+
' NBER1 as NILAI_SUMBER,NTUK1,NTUK2,NTUK3,NTUK4,NTUK5,NTUK6,NLIH1 as NILAI_PEMULIHAN,NVOL1,NVOL2,NVOL3,NVOL4,NVOL5,NVOL6, '+
' NFAK1,NFAK2,NFAK3,NFAK4,NFAK5,NFAK6,NPNA1,NPNA2,NPNA3,NPNA4,NPNA5,NPNA6, '+
' "CONCAT"(hrESPT,"CONCAT"('+QuotedStr('/')+',"CONCAT"(blESPT,("CONCAT"('+QuotedStr('/20')+',thEspt))))) as Tgl_ENTRY '+
' FROM "sptibt" INNER JOIN "wpr" ON "sptibt".NOPOK = "wpr".NOPOK  '+
' where "wpr".NOPOK<>0 AND NVL(NOuSKP,0)=0 AND "wpr".CARA='+QuotedStr('O');

   if kode.Text <> '' then param1 := ' and "wpr".Cara ='+QuotedStr(kode.Text);
   if cxLookupComboBox1.Text <> '' then param2 := ' and "WPR".BKEC ='+QuotedStr(Qkecamatan.FieldByName('KEC').AsString);
   if FormatDateTime('yyyy',datetahun.date) <> '' then param3 := ' and thp ='+QuotedStr(FormatDateTime('yy',datetahun.date));
   if FormatDateTime('M',datebulan.date) <> '' then param4 := ' and blp='+QuotedStr(FormatDateTime('M',datebulan.date));
   if cxDateentryspt.Text <> '' then param5 := ' and thespt ='+QuotedStr(FormatDateTime('yy',cxDateentryspt.date))+' and blespt='+QuotedStr(FormatDateTime('M',cxDateentryspt.date))+' and hrespt='+QuotedStr(FormatDateTime('dd',cxDateentryspt.date))+' ';

   sql := str+param1+param2+param3+param4+param5+param6+param7+param8+param9+param10;
   dm.Qpenetapanview.Close;
   dm.Qpenetapanview.SQL.Text := sql;
   dm.Qpenetapanview.Open;

   //updatestatus(' '+inttostr(ZQuery1.RecordCount)+' data ditampilkan',true);
end;

procedure TfpenetapanABTcari.btcariClick(Sender: TObject);
var
baris,kolom:integer;
begin

if enomornota.Text='' then
begin
  ShowMessage( 'Nomor Nota harus Terisi...!!!');
    exit;
end;
if cxDateentryskpt.Text='' then
begin
  ShowMessage( 'Tanggal SKPd harus Terisi...!!!');
    exit;
end;

  cari;
  btreset.Enabled := true;

  if not formexists('fpenetapangrid') then
  fpenetapangrid := Tfpenetapangrid.create(nil);
  fpenetapangrid.BringToFront;
  fpenetapangrid.btcari.Visible:=false;
  fpenetapangrid.cxGrid1Level1.GridView:=fpenetapangrid.cxGrid1TableView1;
  fpenetapangrid.cxGrid1TableView1.ApplyBestFit(nil,true,true);
  fpenetapangrid.btcari.Visible:=true;
  fpenetapangrid.btnedit.Visible:=false;
  fpenetapangrid.lblpenanda.Caption:='sptibt';
  //fpenetapangrid.btcetak.Caption:='Cetak Kartu Data';
  //==================================================
for  baris:=0  to dm.Qpenetapanview.FieldCount-1 do
 begin
   with fpenetapangrid.cxGrid1TableView1.CreateColumn do
    begin
    Caption:=dm.Qpenetapanview.Fields.Fields[baris].FieldName;
    Name:=dm.Qpenetapanview.Fields.Fields[baris].FieldName;
    end;
 end;

dm.Qpenetapanview.First;
fpenetapangrid.cxGrid1TableView1.DataController.BeginFullUpdate;
while not dm.Qpenetapanview.Eof do
begin
baris:=fpenetapangrid.cxGrid1TableView1.DataController.RecordCount;
fpenetapangrid.cxGrid1TableView1.DataController.InsertRecord(baris);
fpenetapangrid.enomornota.Value:=strtoint(enomornota.Text);
 if cxCheckmanual.Checked=false then
  begin
    fpenetapangrid.cxGrid1TableView1.DataController.SetValue(baris,0,true);
    fpenetapangrid.cxGrid1TableView1.DataController.SetValue(baris,1,strtoint(enomornota.Text)+baris);
  end;

  fpenetapangrid.cxGrid1TableView1.DataController.SetValue(baris,2,cxDateentryskpt.Date);
for kolom := 0 to dm.Qpenetapanview.FieldCount-1 do
begin
 fpenetapangrid.cxGrid1TableView1.DataController.SetValue(baris,kolom+3,dm.Qpenetapanview.Fields.Fields[kolom].AsString);
end;
dm.Qpenetapanview.Next;
end;
fpenetapangrid.cxGrid1TableView1.DataController.EndFullUpdate;



  fpenetapanABTcari.close;
end;

procedure TfpenetapanABTcari.btresetClick(Sender: TObject);
begin
  cari;
end;

procedure TfpenetapanABTcari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  formutama.Enabled := true;
  action := cafree;
end;

procedure TfpenetapanABTcari.cxButton1Click(Sender: TObject);
begin
 with formutama.ZQreport do
   begin
     close;
     sql.Clear;
     sql.Text:=dm.Qpenetapanview.SQL.Text;
     open;
   end;
formutama.frxReport1.LoadFromFile(datapath+'Template\daftar induk wajib pajak.fr3') ;
formutama.frxReport1.ShowReport();
end;

end.
