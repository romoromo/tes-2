object FormEntrySTPDPajak: TFormEntrySTPDPajak
  Left = 175
  Top = 30
  AutoScroll = False
  Caption = 'Form Entry STPD Pajak'
  ClientHeight = 576
  ClientWidth = 1046
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 1046
    Height = 548
    Align = alClient
    BevelOuter = bvNone
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      1025
      544)
    object Panel5: TPanel
      Left = 11
      Top = 23
      Width = 968
      Height = 772
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      DesignSize = (
        968
        772)
      object cxGroupBox2: TcxGroupBox
        Left = 25
        Top = 140
        Anchors = [akLeft, akTop, akRight]
        Caption = ' Perorangan '
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.SkinName = 'Caramel'
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 1
        Height = 610
        Width = 920
        object Label1: TLabel
          Left = 24
          Top = 27
          Width = 37
          Height = 16
          Caption = 'Nama'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 24
          Top = 57
          Width = 42
          Height = 16
          Caption = 'Alamat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label6: TLabel
          Left = 23
          Top = 99
          Width = 58
          Height = 16
          Caption = 'Rekening'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblrekening: TLabel
          Left = 425
          Top = 101
          Width = 55
          Height = 13
          Caption = 'Rekening'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 24
          Top = 131
          Width = 201
          Height = 18
          AutoSize = False
          Caption = 'Ketetapan Pajak  (SKPD)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label7: TLabel
          Left = 44
          Top = 251
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Nomor Pemeriksaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label9: TLabel
          Left = 46
          Top = 288
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Pajak Terhutang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label39: TLabel
          Left = 396
          Top = 251
          Width = 108
          Height = 16
          AutoSize = False
          Caption = 'Tanggal  Periksa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label10: TLabel
          Left = 42
          Top = 191
          Width = 88
          Height = 16
          AutoSize = False
          Caption = 'Jumlah Pajak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label11: TLabel
          Left = 24
          Top = 435
          Width = 184
          Height = 17
          AutoSize = False
          Caption = 'Tagihan Pajak (STPD)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label42: TLabel
          Left = 50
          Top = 470
          Width = 101
          Height = 16
          AutoSize = False
          Caption = 'NomorSKPDLB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label43: TLabel
          Left = 404
          Top = 468
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Tanggal STPD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label3: TLabel
          Left = 25
          Top = 225
          Width = 201
          Height = 18
          AutoSize = False
          Caption = 'Setoran Pajak (SSPD)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label5: TLabel
          Left = 40
          Top = 158
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Nomor Pemeriksaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label14: TLabel
          Left = 392
          Top = 158
          Width = 108
          Height = 16
          AutoSize = False
          Caption = 'Tanggal  Periksa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label16: TLabel
          Left = 24
          Top = 326
          Width = 201
          Height = 18
          AutoSize = False
          Caption = 'Pemeriksaan Pajak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label17: TLabel
          Left = 43
          Top = 352
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Nomor Pemeriksaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label18: TLabel
          Left = 395
          Top = 352
          Width = 108
          Height = 16
          AutoSize = False
          Caption = 'Tanggal  Periksa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label19: TLabel
          Left = 45
          Top = 389
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Jumlah Pajak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label20: TLabel
          Left = 49
          Top = 496
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Jumlah Bunga'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label22: TLabel
          Left = 49
          Top = 525
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Jumlah Tagihan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label21: TLabel
          Left = 50
          Top = 558
          Width = 236
          Height = 16
          AutoSize = False
          Caption = 'Tanggal Batas Pembayaran STPD :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label23: TLabel
          Left = 435
          Top = 496
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Jumlah Bulan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object cxButtonEdit1: TcxButtonEdit
          Left = 113
          Top = 97
          Enabled = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.MaxLength = 0
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 0
          Width = 275
        end
        object dateentryspp: TcxDateEdit
          Left = 518
          Top = 250
          Enabled = False
          Properties.DateButtons = []
          Style.Color = cl3DLight
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 1
          Width = 111
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 182
          Top = 287
          DataBinding.DataField = 'RPSSP'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 2
          Width = 288
        end
        object cxDBCurrencyEdit3: TcxDBCurrencyEdit
          Left = 181
          Top = 190
          DataBinding.DataField = 'RPSKP'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 3
          Width = 288
        end
        object cxDBMaskEdit4: TcxDBMaskEdit
          Left = 187
          Top = 468
          DataBinding.DataField = 'NOSTP'
          DataBinding.DataSource = Dsdata
          TabOrder = 4
          Width = 93
        end
        object cxDBMaskEdit1: TcxDBMaskEdit
          Left = 184
          Top = 249
          DataBinding.DataField = 'NOSSP'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 5
          Width = 93
        end
        object cxDBMaskEdit2: TcxDBMaskEdit
          Left = 180
          Top = 156
          DataBinding.DataField = 'NOSKP'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 6
          Width = 93
        end
        object dateentryskp: TcxDateEdit
          Left = 514
          Top = 157
          Enabled = False
          Properties.DateButtons = []
          Style.Color = cl3DLight
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 7
          Width = 111
        end
        object cxDBMaskEdit3: TcxDBMaskEdit
          Left = 183
          Top = 350
          DataBinding.DataField = 'NOPER'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 8
          Width = 93
        end
        object dateentryperiksa: TcxDateEdit
          Left = 517
          Top = 351
          Enabled = False
          Properties.DateButtons = []
          Style.Color = cl3DLight
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 9
          Width = 111
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 181
          Top = 388
          DataBinding.DataField = 'RPSPER'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 10
          Width = 288
        end
        object cxDBCurrencyEdit4: TcxDBCurrencyEdit
          Left = 185
          Top = 495
          DataBinding.DataField = 'BUSTP'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 11
          Width = 226
        end
        object cxDBCurrencyEdit5: TcxDBCurrencyEdit
          Left = 184
          Top = 524
          DataBinding.DataField = 'RPSTP'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 12
          Width = 225
        end
        object cxSpinEdit1: TcxSpinEdit
          Left = 528
          Top = 492
          Properties.OnEditValueChanged = cxSpinEdit1PropertiesEditValueChanged
          TabOrder = 13
          Width = 112
        end
        object cxDBLabel2: TcxDBLabel
          Left = 112
          Top = 56
          DataBinding.DataField = 'BAl'
          DataBinding.DataSource = DsPenagihanview
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 467
        end
        object cxDBLabel1: TcxDBLabel
          Left = 112
          Top = 27
          DataBinding.DataField = 'Bnama'
          DataBinding.DataSource = DsPenagihanview
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 467
        end
        object dateentrystp: TcxDateEdit
          Left = 528
          Top = 463
          Properties.DateButtons = []
          Style.Color = clWindow
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 16
          Width = 111
        end
        object datebatasstp: TcxDateEdit
          Left = 264
          Top = 557
          Properties.DateButtons = []
          Style.Color = clWindow
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 17
          Width = 111
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 24
        Top = 15
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Validasi Penyetoran'
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.SkinName = 'Caramel'
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 0
        Height = 107
        Width = 920
        object Label13: TLabel
          Left = 34
          Top = 64
          Width = 95
          Height = 16
          Caption = 'Nomor Pokok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel
          Left = 34
          Top = 25
          Width = 44
          Height = 16
          Caption = 'Tahun'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel
          Left = 220
          Top = 25
          Width = 40
          Height = 16
          Caption = 'Bulan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 391
          Top = 25
          Width = 59
          Height = 16
          Caption = 'Tanggal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Ke: TLabel
          Left = 545
          Top = 25
          Width = 19
          Height = 16
          Caption = 'Ke'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object datetahun: TDateTimePicker
          Left = 137
          Top = 24
          Width = 65
          Height = 21
          Date = 41260.364556145830000000
          Format = 'yyyy'
          Time = 41260.364556145830000000
          TabOrder = 0
        end
        object datebulan: TDateTimePicker
          Left = 272
          Top = 24
          Width = 97
          Height = 21
          Date = 41260.365819074070000000
          Format = 'MMMM'
          Time = 41260.365819074070000000
          TabOrder = 1
        end
        object datehari: TDateTimePicker
          Left = 479
          Top = 24
          Width = 41
          Height = 21
          Date = 41260.366571030090000000
          Format = 'dd'
          Time = 41260.366571030090000000
          TabOrder = 2
        end
        object cxke: TcxTextEdit
          Left = 580
          Top = 24
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 68
        end
        object enopok: TcxTextEdit
          Left = 136
          Top = 63
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 210
        end
        object cxButton1: TcxButton
          Left = 355
          Top = 62
          Width = 97
          Height = 25
          Caption = 'Enter >>'
          TabOrder = 5
          OnClick = cxButton1Click
          CanBeFocused = False
          LookAndFeel.Kind = lfOffice11
        end
        object cxhari: TcxCheckBox
          Left = 454
          Top = 23
          Caption = 'cxhari'
          TabOrder = 6
          Width = 22
        end
        object lblnmtabel: TcxLabel
          Left = 768
          Top = 32
          Caption = 'lblnmtabel'
          Visible = False
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 548
    Width = 1046
    Height = 28
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    object btsimpan: TcxButton
      Left = 4
      Top = 1
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 0
      OnClick = btsimpanClick
      LookAndFeel.Kind = lfOffice11
    end
    object btkeluar: TcxButton
      Left = 177
      Top = 1
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 1
      CanBeFocused = False
      LookAndFeel.Kind = lfOffice11
    end
    object btcetak: TcxButton
      Left = 80
      Top = 1
      Width = 97
      Height = 25
      Caption = '&Cetak Kartu'
      TabOrder = 2
      CanBeFocused = False
      LookAndFeel.Kind = lfOffice11
    end
  end
  object ZQrekening: TZQuery
    Connection = formutama.conn_record
    SQL.Strings = (
      
        'SELECT THP,BLP,HRP,KE,PR,GOL,NOPOK,KEC,KEL,PEND,PAD,PJK,AYT,JEN,' +
        'SUB,BU,RPOMZ,TARIFPC,TARIFRP,BUNGAPC,BUNGARP,PCRING,RPRING,PAJAK' +
        ','
      
        'THSPT,BLSPT,HRSPT,AYSPT,NOSPT,KESPT,BUSPT,THSKP,BLSKP,HRSKP,AYSK' +
        'P,NOSKP,NOUSKP,KESKP,RPSKP,'
      'RPSSKP,HRPER,BLPER,THPER,NOPER,RPOMP,PAJAKP,RPSPER,'
      
        'THKB,BLKB,HRKB,AYKB,NOKB,NOUKB,KEKB,OMKB,PAKB,NAKB,BAKB,BUKB,ADK' +
        'B,RPKB,LAPKB,NOSKB,RPSKB,'
      
        'THSSP,BLSSP,HRSSP,AYSSP,NOSSP,KESSP,RPSSP,TPSET,LUNAS,THESSP,BLE' +
        'SSP,HRESSP,'
      
        'THSTP,BLSTP,HRSTP,AYSTP,NOSTP,KESTP,BASTP,BUSTP,DESTP,NASTP,ADST' +
        'P,RPSTP,THBSTP,BLBSTP,HRBSTP,THTSTP,BLTSTP,HRTSTP,THGSTP,BLGSTP,' +
        'HRGSTP,NOGSTP,THPSTP,BLPSTP,HRPSTP,NOPSTP,THSSTP,BLSSTP,HRSSTP,N' +
        'OSSTP,RPSSTP'
      'FROM'
      '"sptht"')
    Params = <>
    Left = 779
    Top = 87
  end
  object Dsdata: TDataSource
    DataSet = dm.ZQpenagihan
    OnStateChange = DsdataStateChange
    Left = 771
    Top = 55
  end
  object ZQpenagihanview: TZQuery
    Connection = formutama.conn_record
    SQL.Strings = (
      
        'SELECT THP,BLP,HRP,KE,PR,GOL,NOPOK,KEC,KEL,PEND,PAD,PJK,AYT,JEN,' +
        'SUB,BU,RPOMZ,TARIFPC,TARIFRP,BUNGAPC,BUNGARP,PCRING,RPRING,PAJAK' +
        ','
      
        'THSPT,BLSPT,HRSPT,AYSPT,NOSPT,KESPT,BUSPT,THSKP,BLSKP,HRSKP,AYSK' +
        'P,NOSKP,NOUSKP,KESKP,RPSKP,'
      'RPSSKP,HRPER,BLPER,THPER,NOPER,RPOMP,PAJAKP,RPSPER,'
      
        'THKB,BLKB,HRKB,AYKB,NOKB,NOUKB,KEKB,OMKB,PAKB,NAKB,BAKB,BUKB,ADK' +
        'B,RPKB,LAPKB,NOSKB,RPSKB,'
      
        'THSSP,BLSSP,HRSSP,AYSSP,NOSSP,KESSP,RPSSP,TPSET,LUNAS,THESSP,BLE' +
        'SSP,HRESSP,'
      
        'THSTP,BLSTP,HRSTP,AYSTP,NOSTP,KESTP,BASTP,BUSTP,DESTP,NASTP,ADST' +
        'P,RPSTP,THBSTP,BLBSTP,HRBSTP,THTSTP,BLTSTP,HRTSTP,THGSTP,BLGSTP,' +
        'HRGSTP,NOGSTP,THPSTP,BLPSTP,HRPSTP,NOPSTP,THSSTP,BLSSTP,HRSSTP,N' +
        'OSSTP,RPSSTP'
      'FROM'
      '"sptht"')
    Params = <>
    Left = 731
    Top = 55
  end
  object DsPenagihanview: TDataSource
    DataSet = ZQpenagihanview
    Left = 734
    Top = 87
  end
end
