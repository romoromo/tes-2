unit pendaftarangrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ExtCtrls, DB, DBAccess, MyAccess, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, EXLReportExcelTLB,
  EXLReportBand, EXLReport, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxCalendar, frxClass, frxDBSet, MemDS,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxTextEdit, dxSkinCaramel, dxSkinCoffee,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver,
  dxSkinStardust, dxSkinValentine, dxSkinXmas2008Blue, cxCheckBox;

type
  Tfpendaftarangrid = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    gridpendaftaran: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    Panel5: TPanel;
    btcetak: TcxButton;
    btcari: TcxButton;
    dsdaftar: TMyDataSource;
    cxButton2: TcxButton;
    cxButton7: TcxButton;
    cxStyle5: TcxStyle;
    exlrep: TEXLReport;
    cxButton3: TcxButton;
    gridpendaftaranColumn1: TcxGridDBColumn;
    gridpendaftaranColumn2: TcxGridDBColumn;
    gridpendaftaranColumn3: TcxGridDBColumn;
    gridpendaftaranColumn4: TcxGridDBColumn;
    gridpendaftaranColumn5: TcxGridDBColumn;
    gridpendaftaranColumn6: TcxGridDBColumn;
    gridpendaftaranColumn7: TcxGridDBColumn;
    gridpendaftaranColumn8: TcxGridDBColumn;
    Memo1: TMemo;
    cxGrid1TableView1: TcxGridTableView;
    cxGrid1TableView1Column1: TcxGridColumn;
    cxGrid1TableView1Column2: TcxGridColumn;
    cxGrid1TableView1Column3: TcxGridColumn;
    cxGrid1TableView1Column4: TcxGridColumn;
    cxGrid1TableView1Column5: TcxGridColumn;
    cxGrid1TableView1Column6: TcxGridColumn;
    cxGrid1TableView1Column7: TcxGridColumn;
    cxGrid1TableView1Column8: TcxGridColumn;
    cxGrid1TableView1Column9: TcxGridColumn;
    btnedit: TcxButton;
    lblpenanda: TLabel;
    procedure cxButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure gridpendaftaranCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btcetakClick(Sender: TObject);
    procedure btcariClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    golongan : string[1];
  end;

var
  fpendaftarangrid: Tfpendaftarangrid;
  fungsi  : string;
implementation

uses udatamodul,uformutama,pendaftarancari, pendaftaran;


{$R *.dfm}
function isikiri( S:STRING; kap:integer): string;
var
  I,x: Integer;
  str:string;
begin
while Length(s)>kap do
begin
 kap:=kap+1;
end;
if Length(s)<=kap then
begin
I:= kap-Length(s);
end;
str:=s;
for x := 1 to i do
begin
insert('0',str,1);
end;
 result:=str;
end;

procedure Tfpendaftarangrid.cxButton4Click(Sender: TObject);
var
str,tanda:string;
baris,i:integer;
begin
    baris:=cxGrid1TableView1.DataController.RecordCount;
 tanda:='';
    for i := 0 to baris-1 do
      begin

      if cxGrid1TableView1.DataController.GetValue(i,cxGrid1TableView1Column1.Index)=true then
      begin
        str:=str+tanda+cxGrid1TableView1.DataController.GetValue(i,cxGrid1TableView1Column4.Index);
        tanda:=',';
      end;

      end; //for

      with formutama.ZQreport do
      begin
         close;
         sql.Clear;
         sql.Text:='select * from wpr where wpr.NOPOK in ('+str+')';
         //ShowMessage(sql.Text);
         open;
       end;

       formutama.frxReport1.LoadFromFile(datapath+'Template\pengukuhan pjk daerah.fr3') ;
       formutama.frxReport1.ShowReport();
end;


procedure Tfpendaftarangrid.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  updatestatus('',false);
  action := cafree;
end;

procedure Tfpendaftarangrid.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure Tfpendaftarangrid.gridpendaftaranCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin

  dm.zqdaftar.Close;
  dm.zqdaftar.SQL.Text := 'select * from tprosesdaftar where tprosesdaftar_npwprd ="'+dm.vdaftar.fieldbyname('tprosesdaftar_npwprd').AsString+'" ';
  dm.zqdaftar.Open;
  //dm.zqdaftar.Edit;

  {if not formexists('formpendaftaranklik') then
  formpendaftaranklik := Tformpendaftaranklik.create(nil);
  formpendaftaranklik.BringToFront; **}
end;

procedure Tfpendaftarangrid.cxButton7Click(Sender: TObject);
var
  nama,
  alamat,
  kodya,
  telpon,
  unama,
  ualamat,
  ukodya,
  kodekec,
  kodekel,
  ukodekec,
  usaha,
  ukodekel    : variant;

begin


end;

procedure Tfpendaftarangrid.cxButton3Click(Sender: TObject);
begin
  closeall('fpendaftarancari');
  if not formexists('fpendaftarancari') then
  fpendaftarancari := Tfpendaftarancari.create(nil);
  fpendaftarancari.BringToFront;
  fpendaftarancari.lblpenanda.Caption:=lblpenanda.Caption;
end;

procedure Tfpendaftarangrid.FormCreate(Sender: TObject);
begin
defaultsqldaftar := dm.vdaftar.SQL.Text;
end;

procedure Tfpendaftarangrid.btcetakClick(Sender: TObject);
var
str,tanda:string;
baris,i:integer;
begin

if cxGrid1Level1.GridView=cxGrid1TableView1 then
 begin
    baris:=cxGrid1TableView1.DataController.RecordCount;
 tanda:='';
    for i := 0 to baris-1 do
      begin
      if cxGrid1TableView1.DataController.GetValue(i,cxGrid1TableView1Column1.Index)=true then
      begin
        str:=str+tanda+cxGrid1TableView1.DataController.GetValue(i,cxGrid1TableView1Column4.Index);
        tanda:=',';
      end;
      end;
      with formutama.ZQreport do
      begin
         close;
         sql.Clear;
         sql.Text:='select * from wpr where wpr.NOPOK in ('+str+')';
         open;
       end;
       formutama.frxReport1.LoadFromFile(datapath+'Template\KARTUDATA.fr3') ;
       formutama.frxReport1.ShowReport();
 end else
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
  end;// grid view

end;

procedure Tfpendaftarangrid.btcariClick(Sender: TObject);
var
str,tanda:string;
baris,i:integer;
begin
    baris:=cxGrid1TableView1.DataController.RecordCount;
 tanda:='';
    for i := 0 to baris-1 do
      begin
      if cxGrid1TableView1.DataController.GetValue(i,cxGrid1TableView1Column1.Index)=true then
      begin
        str:=str+tanda+cxGrid1TableView1.DataController.GetValue(i,cxGrid1TableView1Column4.Index);
        tanda:=',';
      end;
      end;
      with formutama.ZQreport do
      begin
         close;
         sql.Clear;
         sql.Text:='select * from wpr where wpr.NOPOK in ('+str+')';
         ShowMessage(sql.Text);
         open;
       end;
       formutama.frxReport1.LoadFromFile(datapath+'Template\pengukuhan pjk daerah.fr3') ;
       formutama.frxReport1.ShowReport();
end;

procedure Tfpendaftarangrid.btneditClick(Sender: TObject);
begin
//ShowMessage('select * from wpr where nopok='+QuotedStr(dm.Qpendaftaranview.FieldByname('nopok').AsString));

 if dm.Qpendaftaranview.FieldByname('gol').AsString='1' then
 begin
  closeall('fpendaftaran');
  if not formexists('fpendaftaran') then
  fpendaftaran := Tfpendaftaran.create(nil);
  fpendaftaran.BringToFront;
  fpendaftaran.ScrollBox1.VertScrollBar.Position := 1;
  fpendaftaran.cxGroupBox6.Visible:=false;
  fpendaftaran.cxGroupBox4.Visible:=true;
  fpendaftaran.Lblnopemilik.Visible:=false;
  fpendaftaran.cxDBTextEditnopokl.Visible:=false;
  fpendaftaran.cxGroupBox4.top:=742;
  fpendaftaran.cxGroupBox5.top:=fpendaftaran.cxGroupBox4.top+ fpendaftaran.cxGroupBox4.Height+10;
  fpendaftaran.cxGroupBox5.Visible:=true;
  fpendaftaran.eform.SetFocus;
  updatestatus('Isikan Data Wajib Pajak atau Retribusi..',true);
  end
else begin
  closeall('fpendaftaran');
  if not formexists('fpendaftaran') then
  fpendaftaran := Tfpendaftaran.create(nil);

  fpendaftaran.ScrollBox1.VertScrollBar.Position := 1;
  fpendaftaran.cxGroupBox4.Visible:=false;
  fpendaftaran.cxGroupBox6.Visible:=true;
  fpendaftaran.Lblnopemilik.Visible:=true;
  fpendaftaran.cxDBTextEditnopokl.Visible:=true;
  fpendaftaran.cxGroupBox6.top:=742;
  fpendaftaran.cxGroupBox5.top:=fpendaftaran.cxGroupBox6.top+ fpendaftaran.cxGroupBox6.Height+10;
  fpendaftaran.cxGroupBox5.Visible:=true;
  fpendaftaran.eform.SetFocus;
  updatestatus('Isikan Data Wajib Pajak atau Retribusi..',true);
end;//buke form

  if fpendaftaran.ZQpendaftaran.State in [dsinsert,dsedit] then fpendaftaran.ZQpendaftaran.Cancel;
     with fpendaftaran.ZQpendaftaran do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from wpr where nopok='+QuotedStr(dm.Qpendaftaranview.FieldByname('nopok').AsString);
    end;
//======================insert tanggal
  if dm.Qpendaftaranview.FieldByname('gol').AsString='1' then
  begin
    if (dm.Qpendaftaranview.FieldByName('hrku').AsString<>'') and (dm.Qpendaftaranview.FieldByName('blku').AsString<>'') and (dm.Qpendaftaranview.FieldByName('thku').AsString<>'') then
  begin
  fpendaftaran.cxDateEdittglkukuh.Date:= StrToDate(isikiri(dm.Qpendaftaranview.FieldByName('hrku').AsString,2)+'/'+isikiri(dm.Qpendaftaranview.FieldByName('blku').AsString,2)+'/20'+isikiri(dm.Qpendaftaranview.FieldByName('thku').AsString,2));
  end;

    if (dm.Qpendaftaranview.FieldByName('hrtri').AsString<>'') and (dm.Qpendaftaranview.FieldByName('bltri').AsString<>'') and (dm.Qpendaftaranview.FieldByName('thtri').AsString<>'') then
  begin
  fpendaftaran.cxDateEdittglterima.Date:= StrToDate(isikiri(dm.Qpendaftaranview.FieldByName('hrtri').AsString,2)+'/'+isikiri(dm.Qpendaftaranview.FieldByName('bltri').AsString,2)+'/20'+isikiri(dm.Qpendaftaranview.FieldByName('thtri').AsString,2));
  end;

    if (dm.Qpendaftaranview.FieldByName('hrent').AsString<>'') and (dm.Qpendaftaranview.FieldByName('blent').AsString<>'') and (dm.Qpendaftaranview.FieldByName('thent').AsString<>'') then
  begin
  fpendaftaran.cxDateEditentry.Date:= StrToDate(isikiri(dm.Qpendaftaranview.FieldByName('hrent').AsString,2)+'/'+isikiri(dm.Qpendaftaranview.FieldByName('blent').AsString,2)+'/20'+isikiri(dm.Qpendaftaranview.FieldByName('thent').AsString,2));
  end;

  end else // jika bukan gol 1
  begin
    if (dm.Qpendaftaranview.FieldByName('hrku').AsString<>'') and (dm.Qpendaftaranview.FieldByName('blku').AsString<>'') and (dm.Qpendaftaranview.FieldByName('thku').AsString<>'') then
  begin
  fpendaftaran.cxDateEdittglkukuhbu.Date:= StrToDate(isikiri(dm.Qpendaftaranview.FieldByName('hrku').AsString,2)+'/'+isikiri(dm.Qpendaftaranview.FieldByName('blku').AsString,2)+'/20'+isikiri(dm.Qpendaftaranview.FieldByName('thku').AsString,2));
  end;

    if (dm.Qpendaftaranview.FieldByName('hrtri').AsString<>'') and (dm.Qpendaftaranview.FieldByName('bltri').AsString<>'') and (dm.Qpendaftaranview.FieldByName('thtri').AsString<>'') then
  begin
  //ShowMessage(dm.Qpendaftaranview.FieldByName('hrtri').AsString+'/'+dm.Qpendaftaranview.FieldByName('bltri').AsString+'/20'+dm.Qpendaftaranview.FieldByName('thtri').AsString);
  fpendaftaran.cxDateEdittglterimabu.Date:= StrToDate(isikiri(dm.Qpendaftaranview.FieldByName('hrtri').AsString,2)+'/'+isikiri(dm.Qpendaftaranview.FieldByName('bltri').AsString,2)+'/20'+isikiri(dm.Qpendaftaranview.FieldByName('thtri').AsString,2));
  //fpendaftaran.cxDateEdittglterimabu.Text:= isikiri(dm.Qpendaftaranview.FieldByName('hrtri').AsString,2)+'/'+isikiri(dm.Qpendaftaranview.FieldByName('bltri').AsString,2)+'/20'+isikiri(dm.Qpendaftaranview.FieldByName('thtri').AsString,2);
  end;

    if (dm.Qpendaftaranview.FieldByName('hrent').AsString<>'') and (dm.Qpendaftaranview.FieldByName('blent').AsString<>'') and (dm.Qpendaftaranview.FieldByName('thent').AsString<>'') then
  begin
  fpendaftaran.cxDateEdittglentrybu.Date:= StrToDate(isikiri(dm.Qpendaftaranview.FieldByName('hrent').AsString,2)+'/'+isikiri(dm.Qpendaftaranview.FieldByName('blent').AsString,2)+'/20'+isikiri(dm.Qpendaftaranview.FieldByName('thent').AsString,2));
  end;
  end;//group visible

//======================insert tanggal
  if not fpendaftaran.ZQpendaftaran.Active then fpendaftaran.ZQpendaftaran.Open;
  fpendaftaran.ZQpendaftaran.Edit;
  fpendaftaran.BringToFront;

end;

end.
