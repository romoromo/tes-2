unit UEntrySKPDLB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinSilver, dxSkinStardust, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGraphics, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBLookupComboBox, cxDropDownEdit, cxSpinEdit, ComCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxMemo, cxDBEdit, cxTextEdit, StdCtrls, cxContainer,
  cxGroupBox, ExtCtrls, Menus, cxButtons, cxCurrencyEdit, cxCalendar,
  cxButtonEdit;

type
  TFormEntrySKPDLB = class(TForm)
    ScrollBox1: TScrollBox;
    Panel5: TPanel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    Label13: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    cxSpinEdit1: TcxSpinEdit;
    lblLokasi: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    Panel3: TPanel;
    btsimpan: TcxButton;
    btkeluar: TcxButton;
    btcetak: TcxButton;
    Label1: TLabel;
    Label4: TLabel;
    LblSptalamat: TLabel;
    LblSptnama: TLabel;
    Label6: TLabel;
    lblrekening: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    Label2: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label39: TLabel;
    datebatasspt: TcxDateEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label10: TLabel;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    Label11: TLabel;
    Label42: TLabel;
    cxDBMaskEdit4: TcxDBMaskEdit;
    Label43: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label3: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEntrySKPDLB: TFormEntrySKPDLB;

implementation

{$R *.dfm}

procedure TFormEntrySKPDLB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

end.
