unit pendaftarancari;

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
  ZAbstractDataset, ZDataset, cxDBEdit,strutils;

type
  Tfpenetapanreklamecari = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    nomor: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label2: TLabel;
    nama: TcxTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    lookkec: TcxLookupComboBox;
    lookkel: TcxLookupComboBox;
    cxGroupBox3: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    namabu: TcxTextEdit;
    lookkecbu: TcxLookupComboBox;
    lookkelbu: TcxLookupComboBox;
    Label8: TLabel;
    Label9: TLabel;
    btreset: TcxButton;
    btcari: TcxButton;
    btkeluar: TcxButton;
    cxButton1: TcxButton;
    Label10: TLabel;
    lookdate: TcxDateEdit;
    zqkecamatan: TZQuery;
    zqkelurahan: TZQuery;
    zqkecamatanbu: TZQuery;
    zqkelurahanbu: TZQuery;
    dskecamatan: TDataSource;
    dskelurahan: TDataSource;
    dskecamatanbu: TDataSource;
    dskelurahanbu: TDataSource;
    Label11: TLabel;
    ZQbadanusaha: TZQuery;
    dsbadanusaha: TDataSource;
    lookbu: TcxLookupComboBox;
    ZQuery1: TZQuery;
    lookjenis: TComboBox;
    lookgol: TComboBox;
    lblpenanda: TLabel;
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
  fpenetapanreklamecari: Tfpenetapanreklamecari;

implementation
uses udatamodul,uformutama, pendaftarangrid;

{$R *.dfm}

procedure Tfpenetapanreklamecari.btkeluarClick(Sender: TObject);
begin
  close;
end;

procedure Tfpenetapanreklamecari.FormShow(Sender: TObject);
begin
  formutama.Enabled := false;
  zqkecamatan.Open;
  zqkecamatanbu.Open;
  zqkelurahan.Open;
  zqkelurahanbu.Open;
  ZQbadanusaha.Open;
  //zqpenerimaan.Open;
  //zqgolongan.Open;
  lookdate.Text := '';
end;

procedure Tfpenetapanreklamecari.lookkecPropertiesChange(Sender: TObject);
begin
  //zqkecamatan.Locate('tmkecamatan_kode',lookkec.EditValue,[]);
end;

procedure Tfpenetapanreklamecari.cxLookupComboBox3PropertiesChange(
  Sender: TObject);
begin
  //zqkecamatanbu.Locate('tmkecamatan_kode',lookkecbu.EditValue,[]);
end;

procedure Tfpenetapanreklamecari.cari;
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
   sql,str,strnomor : string;

begin
  if (lblpenanda.Caption='0') or (lblpenanda.Caption='2') then
  begin
str:=' SELECT "wpr".PR,"wpr".NOPOK,"wpr".GOL,"wpr".NOFP,"wpr".NOPOKL,"wpr".GOLL,"wpr".NPWPP,"wpr".BNAMA,"wpr".BAL,"wpr".BRTRW,"wpr".BKEC,"wpr".BKEL,"wpr".BKOTA,"wpr".BATEL,"wpr".BTEL,"wpr".BPOS,"wpr".BBU, '+
  ' "wpr".PRTRW,"wpr".NOKU,"wpr".THKU,"wpr".BLKU,"wpr".HRKU,"wpr".THTRI,"wpr".BLTRI,"wpr".HRTRI,"wpr".THENT,"wpr".BLENT,"wpr".HRENT,"wpr".KDREC, '+
' (select "tabkec".nmkec from "tabkec" where "tabkec".kec="wpr".BKEC) as nmkec, '+
' (select "tabkel".nmkel from "tabkel" where "tabkel".kel="wpr".BKEL and "tabkel".kec="wpr".BKEC) as nmkel '+
' FROM "wpr" '+
' where "wpr".NOPOK<>0 ';
  end else
  begin
str:=' SELECT "wpr".PR,"wpr".GOL,"wpr".NOPOK, '+
' (select "tabkel".nmkel from "tabkel" where "tabkel".kel="wpr".BKEL and "tabkel".kec="wpr".BKEC) as nmkel, '+
' (select "tabkec".nmkec from "tabkec" where "tabkec".kec="wpr".BKEC) as nmkec,"wpr".BNAMA,"wpr".BAL,"wpr".BBU '+
' FROM "wpr" '+
' where "wpr".NOPOK<>0 ';
  end;

if nomor.Text<>'' then
 begin
  for  i:=0  to length(nomor.Text) do
   begin
   strnomor:=nomor.Text;
    if copy(strnomor,i,1)=',' then
     begin
       param1 := ' and "wpr".NOPOK in ('+nomor.Text+') ' ;
       Break;
     end else param1 := ' and "wpr".NOPOK ='+QuotedStr(nomor.Text)+' ' ;
   end;
 end;

   //if nomor.Text <> ''     then param1 := ' and "wpr".NOPOK ='+QuotedStr(nomor.Text)+' ' ;
   if lookjenis.Text <> '' then param2 := ' and "wpr".PR ='+QuotedStr(lookjenis.Text);
   if lookgol.Text <> ''   then param3 := ' and "wpr".GOL ='+QuotedStr(lookgol.Text); //jika didatabase integer harus pake vartostr()
   if lookbu.Text <> ''   then param10 := ' and "wpr".BBU ='+QuotedStr(lookbu.EditingValue);

   if nama.Text <> ''      then param4 := ' and "wpr".PNAMA like "%'+nama.Text+'%"';
   if lookkec.Text <> ''   then param5 := ' and "wpr".PKEC ='+QuotedStr(zqkecamatan.FieldByname('kec').AsString);
   if lookkel.Text <> ''   then param6 := ' and "wpr".PKEL ='+QuotedStr(zqkelurahan.FieldByname('kel').AsString);

   if namabu.Text <> ''    then param7 := ' and "wpr".BNAMA like "%'+namabu.Text+'%"';
   if lookkecbu.Text <> '' then param8 := ' and "wpr".BKEC ='+QuotedStr(zqkecamatanbu.FieldByname('kec').AsString);
   if lookkelbu.Text <> '' then param9 := ' and "wpr".BKEL ='+QuotedStr(zqkelurahanbu.FieldByname('kel').AsString);
   //if lookdate.Text <> '' then param10 := ' and date(tprosesdaftar_tglentry) ='+QuotedStr(formatdatetime('yyyy-mm-dd',lookdate.Date));
   sql := str+param1+param2+param3+param4+param5+param6+param7+param8+param9+param10;
   //ShowMessage(sql);
   dm.Qpendaftaranview.Close;
   dm.Qpendaftaranview.SQL.Text := sql;
   dm.Qpendaftaranview.Open;


   //updatestatus(' '+inttostr(ZQuery1.RecordCount)+' data ditampilkan',true);
end;

procedure Tfpenetapanreklamecari.btcariClick(Sender: TObject);
var
baris,kolom:integer;
begin
  cari;
  btreset.Enabled := true;

  if not formexists('fpendaftarangrid') then
  fpendaftarangrid := Tfpendaftarangrid.create(nil);
  fpendaftarangrid.BringToFront;
  fpendaftarangrid.btcari.Visible:=false;
  if lblpenanda.Caption='0' then
  begin
    fpendaftarangrid.cxGrid1Level1.GridView:=fpendaftarangrid.gridpendaftaran;
    fpendaftarangrid.btcetak.Caption:='Cetak Daftar';
    fpendaftarangrid.btnedit.Visible:=false;
    fpendaftarangrid.lblpenanda.Caption:='0';
  end else
    if lblpenanda.Caption='2' then
  begin
  fpendaftarangrid.cxGrid1Level1.GridView:=fpendaftarangrid.gridpendaftaran;
  fpendaftarangrid.btcari.Visible:=true;
  fpendaftarangrid.btnedit.Visible:=true;
  fpendaftarangrid.lblpenanda.Caption:='2';
  fpendaftarangrid.btcetak.Caption:='Cetak Daftar';
  end else
  begin
  fpendaftarangrid.cxGrid1Level1.GridView:=fpendaftarangrid.cxGrid1TableView1;
  fpendaftarangrid.btcari.Visible:=true;
  fpendaftarangrid.btnedit.Visible:=false;
  fpendaftarangrid.lblpenanda.Caption:='1';
  fpendaftarangrid.btcetak.Caption:='Cetak Kartu Data';
  //==================================================
  dm.Qpendaftaranview.First;
fpendaftarangrid.cxGrid1TableView1.DataController.BeginFullUpdate;
while not dm.Qpendaftaranview.Eof do
begin
baris:=fpendaftarangrid.cxGrid1TableView1.DataController.RecordCount;
fpendaftarangrid.cxGrid1TableView1.DataController.InsertRecord(baris);

for kolom := 0 to dm.Qpendaftaranview.FieldCount-1 do
begin
 fpendaftarangrid.cxGrid1TableView1.DataController.SetValue(baris,kolom+1,dm.Qpendaftaranview.Fields.Fields[kolom].AsString);
end;
dm.Qpendaftaranview.Next;
end;
fpendaftarangrid.cxGrid1TableView1.DataController.EndFullUpdate;
  end;//lblpenanda.Caption='0'
  //fpendaftarangrid.Memo1.Lines.Add(ZQuery1.SQL.Text);
  fpendaftarancari.close;
end;

procedure Tfpenetapanreklamecari.btresetClick(Sender: TObject);
begin
  nomor.Text          := '';
  lookjenis.Text := '';
  lookgol.Text   := '';
  nama.Text           := '';
  lookkec.EditValue   := null;
  lookkel.EditValue   := null;
  namabu.Text         := '';
  lookkecbu.EditValue := null;
  lookkelbu.EditValue := null;
  lookdate.Text := '';

  cari;
end;

procedure Tfpenetapanreklamecari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  formutama.Enabled := true;
  action := cafree;
end;

procedure Tfpenetapanreklamecari.cxButton1Click(Sender: TObject);
begin
 with formutama.ZQreport do
   begin
     close;
     sql.Clear;
     sql.Text:=dm.Qpendaftaranview.SQL.Text;
     open;
   end;
formutama.frxReport1.LoadFromFile(datapath+'Template\daftar induk wajib pajak.fr3') ;
formutama.frxReport1.ShowReport();
end;

end.
