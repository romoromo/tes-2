unit reportprintgrid;

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
  dxSkinStardust, dxSkinValentine, dxSkinXmas2008Blue;

type
  Tfreportprintgrid = class(TForm)
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
    cxButton4: TcxButton;
    dsreport: TMyDataSource;
    cxButton2: TcxButton;
    cxButton7: TcxButton;
    cxStyle5: TcxStyle;
    cxButton8: TcxButton;
    cxButton6: TcxButton;
    cxButton1: TcxButton;
    exlrep: TEXLReport;
    cxButton3: TcxButton;
    procedure cxButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure btcariClick(Sender: TObject);
    procedure gridpendaftaranCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    golongan : string[1];
  end;

var
  freportprintgrid: Tfreportprintgrid;
  fungsi  : string;
implementation

uses udatamodul,uformutama,pendaftarancari, pendaftaran;


{$R *.dfm}

procedure Tfreportprintgrid.cxButton4Click(Sender: TObject);
begin
  close;
end;

procedure Tfreportprintgrid.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  updatestatus('',false);
  action := cafree;
end;

procedure Tfreportprintgrid.cxButton2Click(Sender: TObject);
var
recno : integer;
begin
if dm.vdaftar.RecordCount = 0 then exit;

   if messagedlg('Yakin menghapus data?',mtconfirmation,[mbYes,mbNo],0) = mrYes then
      begin
      //recno := dm.vdaftar.RecNo;

      dm.zqdaftar.Close;
      dm.zqdaftar.SQL.Text := 'select * from tprosesdaftar where tprosesdaftar_npwprd ="'+dm.vdaftar.fieldbyname('tprosesdaftar_npwprd').AsString+'" ';
      dm.zqdaftar.Open;
      dm.zqdaftar.Edit;
      dm.zqdaftar.FieldByName('tprosesdaftar_dihapus').AsString := 'True';
      dm.zqdaftar.Post;

      //dm.vdaftar.Refresh;
      while not dm.vdaftar.Active do Application.ProcessMessages;
      if recno <= dm.vdaftar.RecordCount then dm.vdaftar.RecNo := recno
      else if recno > dm.vdaftar.RecordCount then dm.vdaftar.Last; //mengembalikan posisi cursor..
      updatestatus('1 Data dihapus',true);
      end;
end;

procedure Tfreportprintgrid.btcariClick(Sender: TObject);
begin
if dm.vdaftar.RecordCount = 0 then
   begin
   updatestatus('data kosong',true);
   exit;
   end;
  dm.zqdaftar.Close;
  dm.zqdaftar.SQL.Text := ' select * from tprosesdaftar where tprosesdaftar_npwprd ='+QuotedStr(dm.vdaftar.fieldbyname('tprosesdaftar_npwprd').AsString);
  dm.zqdaftar.Open;
  dm.zqdaftar.Edit;
  temp := dm.zqdaftar.fieldbyname('trefgolongan_kode').AsString;

 if temp = '1' then
begin
  closeall('fpendaftaran');
  if not formexists('fpendaftaran') then
  fpendaftaran := Tfpendaftaran.create(nil);
  fpendaftaran.BringToFront;
  fpendaftaran.ScrollBox1.VertScrollBar.Position := 1;
  fpendaftaran.cxGroupBox1.Visible:=false;
  fpendaftaran.cxGroupBox4.top:=396;
  fpendaftaran.eform.SetFocus;
  updatestatus('Isikan Data Wajib Pajak atau Retribusi..',true);
end else
if temp = '2' then
 begin
  closeall('fpendaftaran');
  if not formexists('fpendaftaran') then
  fpendaftaran := Tfpendaftaran.create(nil);
  fpendaftaran.BringToFront;
  fpendaftaran.ScrollBox1.VertScrollBar.Position := 1;
  fpendaftaran.cxGroupBox1.Visible:=true;
  fpendaftaran.cxGroupBox1.top:=396;
  fpendaftaran.cxGroupBox4.top:=833;
  fpendaftaran.eform.SetFocus;
  updatestatus('Isikan Data Wajib Pajak atau Retribusi..',true);
  with fpendaftaran.zqjenisizin do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from tbljenisizin where tprosesdaftar_npwprd="'+dm.Zqdaftar.fieldByname('tprosesdaftar_noform').AsString+'"';
    Open;
  end;



end;


end;

procedure Tfreportprintgrid.gridpendaftaranCellDblClick(
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

procedure Tfreportprintgrid.cxButton7Click(Sender: TObject);
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

procedure Tfreportprintgrid.cxButton3Click(Sender: TObject);
begin
  closeall('fpendaftarancari');
  if not formexists('fpendaftarancari') then
  fpendaftarancari := Tfpendaftarancari.create(nil);
  fpendaftarancari.BringToFront;
end;

procedure Tfreportprintgrid.FormCreate(Sender: TObject);
begin
defaultsqldaftar := dm.vdaftar.SQL.Text;
end;

end.
