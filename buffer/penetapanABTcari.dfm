object fpenetapanABTcari: TfpenetapanABTcari
  Left = 410
  Top = 148
  Width = 371
  Height = 400
  BorderIcons = [biSystemMenu]
  Caption = 'Nota Perhitungan Air Bawah Tanah'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    363
    366)
  PixelsPerInch = 96
  TextHeight = 16
  object cxGroupBox1: TcxGroupBox
    Left = 12
    Top = 13
    Anchors = [akLeft, akTop, akRight]
    Caption = '  N.P.W.P/R.D '
    Style.BorderStyle = ebsOffice11
    Style.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
    TabOrder = 0
    Height = 307
    Width = 340
    object Label1: TLabel
      Left = 8
      Top = 161
      Width = 92
      Height = 16
      Caption = 'Dengan Cara'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 9
      Top = 32
      Width = 103
      Height = 16
      Caption = 'Tanggal Pajak'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label31: TLabel
      Left = 10
      Top = 63
      Width = 58
      Height = 16
      Caption = 'No Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 8
      Top = 105
      Width = 78
      Height = 16
      Caption = 'Kecamatan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 12
      Top = 209
      Width = 86
      Height = 16
      Caption = 'Tgl. Entry SPT'
      Transparent = True
    end
    object Label2: TLabel
      Left = 12
      Top = 244
      Width = 95
      Height = 16
      Caption = 'Tgl. Entry SKPD'
      Transparent = True
    end
    object Label3: TLabel
      Left = 196
      Top = 156
      Width = 116
      Height = 16
      Caption = '(O):Offc   (S):Self'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object datetahun: TDateTimePicker
      Left = 145
      Top = 33
      Width = 65
      Height = 21
      Date = 41393.356848125000000000
      Format = 'yyyy'
      Time = 41393.356848125000000000
      DateMode = dmUpDown
      TabOrder = 0
    end
    object datebulan: TDateTimePicker
      Left = 220
      Top = 33
      Width = 104
      Height = 21
      Date = 41275.356848125000000000
      Format = 'MMMM'
      Time = 41275.356848125000000000
      DateMode = dmUpDown
      TabOrder = 1
    end
    object enomornota: TcxMaskEdit
      Left = 145
      Top = 65
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      Style.BorderStyle = ebsFlat
      Style.Color = clCream
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 177
    end
    object cxDateentryspt: TcxDateEdit
      Left = 148
      Top = 206
      Style.BorderStyle = ebsFlat
      Style.Color = clWindow
      TabOrder = 3
      Width = 177
    end
    object cxDateentryskpt: TcxDateEdit
      Left = 148
      Top = 242
      Style.BorderStyle = ebsFlat
      Style.Color = clCream
      TabOrder = 4
      Width = 177
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 144
      Top = 104
      Properties.KeyFieldNames = 'KEC'
      Properties.ListColumns = <
        item
          FieldName = 'NMKEC'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = Dskecamatan
      Style.Color = clWindow
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 5
      Width = 185
    end
    object KODE: TcxComboBox
      Left = 144
      Top = 154
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'O')
      TabOrder = 6
      Width = 42
    end
    object cxCheckmanual: TcxCheckBox
      Left = 145
      Top = 274
      Caption = 'Check List manual'
      TabOrder = 7
      Width = 121
    end
  end
  object btreset: TcxButton
    Left = 12
    Top = 331
    Width = 75
    Height = 25
    Caption = '&Reset'
    Enabled = False
    TabOrder = 1
    OnClick = btresetClick
    LookAndFeel.Kind = lfOffice11
  end
  object btcari: TcxButton
    Left = 88
    Top = 331
    Width = 75
    Height = 27
    Caption = '&Cari'
    TabOrder = 2
    OnClick = btcariClick
    LookAndFeel.Kind = lfOffice11
  end
  object btkeluar: TcxButton
    Left = 278
    Top = 331
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Keluar'
    TabOrder = 3
    OnClick = btkeluarClick
    LookAndFeel.Kind = lfOffice11
  end
  object cxButton1: TcxButton
    Left = 164
    Top = 331
    Width = 75
    Height = 25
    Caption = '&Cetak'
    TabOrder = 4
    Visible = False
    OnClick = cxButton1Click
    LookAndFeel.Kind = lfOffice11
  end
  object ZQbadanusaha: TZQuery
    Connection = formutama.conn_record
    ReadOnly = True
    SQL.Strings = (
      'select kdbu,nmbu from "tabbdu"')
    Params = <>
    Left = 308
    Top = 293
  end
  object dsbadanusaha: TDataSource
    DataSet = ZQbadanusaha
    Left = 308
    Top = 325
  end
  object ZQuery1: TZQuery
    Connection = formutama.conn_record
    ReadOnly = True
    SQL.Strings = (
      
        'SELECT wpr.PR,wpr.NOPOK,wpr.GOL,wpr.BNAMA,wpr.BAL,wpr.BKEC,wpr.B' +
        'KEL,bbu FROM wpr where  wpr.BNAMA = '#39'FISIPOL UGM'#39)
    Params = <>
    Left = 124
    Top = 341
  end
  object Qkecamatan: TZQuery
    Connection = formutama.conn_record
    Active = True
    SQL.Strings = (
      'select * from "tabkec"  order by kec')
    Params = <>
    Left = 241
    Top = 293
  end
  object Dskecamatan: TDataSource
    DataSet = Qkecamatan
    Left = 273
    Top = 293
  end
end
