object FormEntrySetoranPajak: TFormEntrySetoranPajak
  Left = 154
  Top = 24
  Width = 1057
  Height = 648
  Caption = 'Form Entry Setoran Pajak'
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
    Width = 1049
    Height = 585
    Align = alClient
    BevelOuter = bvNone
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      1028
      581)
    object Panel5: TPanel
      Left = 11
      Top = 16
      Width = 959
      Height = 714
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      DesignSize = (
        959
        714)
      object cxGroupBox2: TcxGroupBox
        Left = 24
        Top = 145
        Anchors = [akLeft, akTop, akRight]
        Caption = '   '
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.SkinName = 'Caramel'
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.BorderColor = cl3DLight
        StyleDisabled.Color = cl3DLight
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
        Height = 559
        Width = 911
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
          Left = 486
          Top = 24
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
          Left = 591
          Top = 56
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
          Top = 96
          Width = 115
          Height = 16
          Caption = 'Ketetapan Pajak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label3: TLabel
          Left = 46
          Top = 123
          Width = 81
          Height = 16
          Caption = 'Tanggal SPT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label5: TLabel
          Left = 46
          Top = 150
          Width = 161
          Height = 20
          AutoSize = False
          Caption = 'Nomor Kohir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label7: TLabel
          Left = 46
          Top = 179
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Bunga'
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
          Top = 209
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Ketetapan'
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
          Left = 489
          Top = 97
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Tagihan Pajak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label11: TLabel
          Left = 511
          Top = 123
          Width = 104
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
        object Label14: TLabel
          Left = 511
          Top = 150
          Width = 161
          Height = 20
          AutoSize = False
          Caption = 'Nomor STPD'
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
          Left = 511
          Top = 179
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Bunga'
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
          Left = 511
          Top = 209
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Denda'
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
          Left = 511
          Top = 237
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Tagihan Pajak'
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
          Left = 490
          Top = 267
          Width = 223
          Height = 16
          AutoSize = False
          Caption = 'Tagihan Kekurangan Pajak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label22: TLabel
          Left = 514
          Top = 291
          Width = 119
          Height = 16
          AutoSize = False
          Caption = 'Tanggal SKPDKB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label23: TLabel
          Left = 514
          Top = 318
          Width = 161
          Height = 20
          AutoSize = False
          Caption = 'Nomor SKPDKB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label24: TLabel
          Left = 514
          Top = 347
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Bunga'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label25: TLabel
          Left = 514
          Top = 377
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Denda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label26: TLabel
          Left = 516
          Top = 405
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Tagihan SKPDKB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label27: TLabel
          Left = 26
          Top = 267
          Width = 223
          Height = 16
          AutoSize = False
          Caption = 'Setoran Pajak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label28: TLabel
          Left = 74
          Top = 291
          Width = 101
          Height = 16
          AutoSize = False
          Caption = 'Tempat Setor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label29: TLabel
          Left = 74
          Top = 318
          Width = 111
          Height = 20
          AutoSize = False
          Caption = 'Tanggal Setor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label30: TLabel
          Left = 74
          Top = 347
          Width = 89
          Height = 16
          AutoSize = False
          Caption = 'Bunga'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label31: TLabel
          Left = 74
          Top = 377
          Width = 96
          Height = 16
          AutoSize = False
          Caption = 'Denda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label32: TLabel
          Left = 74
          Top = 405
          Width = 96
          Height = 16
          AutoSize = False
          Caption = 'Pajak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label33: TLabel
          Left = 74
          Top = 429
          Width = 102
          Height = 16
          AutoSize = False
          Caption = 'Total Setoran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label34: TLabel
          Left = 74
          Top = 459
          Width = 101
          Height = 16
          AutoSize = False
          Caption = 'Nomor SSPD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label35: TLabel
          Left = 74
          Top = 487
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Tanggal Entry SSPD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label36: TLabel
          Left = 286
          Top = 459
          Width = 132
          Height = 16
          AutoSize = False
          Caption = 'Nomor SSSPD STP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label37: TLabel
          Left = 516
          Top = 457
          Width = 101
          Height = 16
          AutoSize = False
          Caption = 'Nomor SSPDKB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label38: TLabel
          Left = 520
          Top = 483
          Width = 49
          Height = 16
          AutoSize = False
          Caption = 'Cetak'
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
          Left = 286
          Top = 123
          Width = 35
          Height = 16
          Caption = 'Batas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label40: TLabel
          Left = 286
          Top = 292
          Width = 147
          Height = 16
          AutoSize = False
          Caption = 'B=BKP,   K=KAS Daerah'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label41: TLabel
          Left = 486
          Top = 56
          Width = 70
          Height = 16
          Caption = 'Jenis Pajak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label42: TLabel
          Left = 77
          Top = 518
          Width = 154
          Height = 24
          Caption = 'File Already Exists'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label43: TLabel
          Left = 633
          Top = 483
          Width = 147
          Height = 16
          AutoSize = False
          Caption = 'B=BKP,   K=KAS Daerah'
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
          Left = 590
          Top = 21
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
        object dateentryspt: TcxDateEdit
          Left = 152
          Top = 122
          EditValue = 41255d
          Enabled = False
          Properties.DateButtons = []
          Style.Color = cl3DLight
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 1
          Width = 109
        end
        object datebatasspt: TcxDateEdit
          Left = 329
          Top = 122
          EditValue = 41255d
          Enabled = False
          Properties.DateButtons = []
          Style.Color = cl3DLight
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 2
          Width = 111
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 152
          Top = 148
          DataBinding.DataField = 'NOSPT'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 3
          Width = 288
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 152
          Top = 176
          DataBinding.DataField = 'BUSPT'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 4
          Width = 288
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 152
          Top = 208
          DataBinding.DataField = 'PAJAK'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 5
          Width = 288
        end
        object cxDateSTPD: TcxDateEdit
          Left = 616
          Top = 122
          EditValue = 41255d
          Enabled = False
          Properties.DateButtons = []
          Style.Color = cl3DLight
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 6
          Width = 114
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 616
          Top = 148
          DataBinding.DataField = 'NOSTP'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 7
          Width = 288
        end
        object cxDBCurrencyEdit3: TcxDBCurrencyEdit
          Left = 616
          Top = 176
          DataBinding.DataField = 'BUSTP'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 8
          Width = 288
        end
        object cxDBCurrencyEdit4: TcxDBCurrencyEdit
          Left = 616
          Top = 208
          DataBinding.DataField = 'BU'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 9
          Width = 288
        end
        object cxDBCurrencyEdit5: TcxDBCurrencyEdit
          Left = 616
          Top = 233
          DataBinding.DataField = 'RPSTP'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 10
          Width = 288
        end
        object cxDateEdit2: TcxDateEdit
          Left = 209
          Top = 485
          EditValue = 41255d
          Properties.DateButtons = []
          Style.Color = clWindow
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 11
          Width = 114
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 631
          Top = 316
          DataBinding.DataField = 'NOKB'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 12
          Width = 271
        end
        object cxDBCurrencyEdit6: TcxDBCurrencyEdit
          Left = 631
          Top = 344
          DataBinding.DataField = 'BUKB'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 13
          Width = 271
        end
        object cxDBCurrencyEdit7: TcxDBCurrencyEdit
          Left = 631
          Top = 376
          DataBinding.DataField = 'DESTP'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 14
          Width = 271
        end
        object cxDBCurrencyEdit8: TcxDBCurrencyEdit
          Left = 631
          Top = 401
          DataBinding.DataField = 'RPKB'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 15
          Width = 271
        end
        object cxDateEdit3: TcxDateEdit
          Left = 171
          Top = 317
          EditValue = 41255d
          Properties.DateButtons = []
          Style.Color = clWindow
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 16
          Width = 97
        end
        object cxDBCurrencyEdit10: TcxDBCurrencyEdit
          Left = 170
          Top = 403
          DataBinding.DataField = 'PAJAK'
          DataBinding.DataSource = Dsdata
          Enabled = False
          StyleDisabled.BorderColor = clCream
          StyleDisabled.BorderStyle = ebsUltraFlat
          StyleDisabled.TextColor = clBlack
          TabOrder = 17
          Width = 271
        end
        object cxDBMaskEdit1: TcxDBMaskEdit
          Left = 172
          Top = 456
          DataBinding.DataField = 'NOSSP'
          DataBinding.DataSource = Dsdata
          TabOrder = 18
          Width = 93
        end
        object cxDBMaskEdit2: TcxDBMaskEdit
          Left = 414
          Top = 456
          DataBinding.DataField = 'NOSSTP'
          DataBinding.DataSource = Dsdata
          TabOrder = 19
          Width = 80
        end
        object cxDBMaskEdit3: TcxDBMaskEdit
          Left = 628
          Top = 456
          DataBinding.DataField = 'NOSKB'
          DataBinding.DataSource = Dsdata
          TabOrder = 20
          Width = 93
        end
        object cxDBLabel1: TcxDBLabel
          Left = 112
          Top = 27
          DataBinding.DataField = 'Bnama'
          DataBinding.DataSource = DsPenyetoranview
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 121
        end
        object cxDBLabel2: TcxDBLabel
          Left = 114
          Top = 56
          DataBinding.DataField = 'BAl'
          DataBinding.DataSource = DsPenyetoranview
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 121
        end
        object cxrpbunga: TcxCurrencyEdit
          Left = 170
          Top = 342
          Enabled = False
          StyleDisabled.Color = clCream
          StyleDisabled.TextColor = clBlack
          TabOrder = 23
          Width = 270
        end
        object cxrpdenda: TcxCurrencyEdit
          Left = 170
          Top = 371
          Enabled = False
          StyleDisabled.Color = clCream
          StyleDisabled.TextColor = clBlack
          TabOrder = 24
          Width = 270
        end
        object cxrptotalsetoran: TcxCurrencyEdit
          Left = 170
          Top = 428
          Enabled = False
          StyleDisabled.Color = clCream
          StyleDisabled.TextColor = clBlack
          TabOrder = 25
          Width = 270
        end
        object cxDBComboBox1: TcxDBComboBox
          Left = 171
          Top = 290
          DataBinding.DataField = 'TPSET'
          DataBinding.DataSource = Dsdata
          Properties.Items.Strings = (
            'B'
            'K')
          TabOrder = 26
          Width = 71
        end
        object cxDateKB: TcxDateEdit
          Left = 639
          Top = 298
          EditValue = 41255d
          Enabled = False
          Properties.DateButtons = []
          Style.Color = cl3DLight
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.Color = cl3DLight
          StyleDisabled.TextColor = clBlack
          TabOrder = 27
          Width = 114
        end
        object cxComboBox2: TcxComboBox
          Left = 568
          Top = 480
          TabOrder = 28
          Width = 49
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
        Height = 120
        Width = 911
        object Label13: TLabel
          Left = 34
          Top = 89
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
          Left = 230
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
          Left = 410
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
          Visible = False
        end
        object Label16: TLabel
          Left = 282
          Top = 57
          Width = 69
          Height = 16
          Caption = 'Lokasi Ke'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label17: TLabel
          Left = 32
          Top = 58
          Width = 96
          Height = 16
          Caption = 'Jenis Setoran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object datetahun: TDateTimePicker
          Left = 138
          Top = 24
          Width = 65
          Height = 21
          Date = 41260.364556145830000000
          Format = 'yyyy'
          Time = 41260.364556145830000000
          TabOrder = 0
        end
        object datebulan: TDateTimePicker
          Left = 282
          Top = 24
          Width = 97
          Height = 21
          Date = 41260.365819074070000000
          Format = 'MMMM'
          Time = 41260.365819074070000000
          TabOrder = 1
        end
        object datehari: TDateTimePicker
          Left = 497
          Top = 24
          Width = 41
          Height = 21
          Date = 41260.366571030090000000
          Format = 'dd'
          Time = 41260.366571030090000000
          TabOrder = 2
          Visible = False
        end
        object cxSpinEdit1: TcxSpinEdit
          Left = 375
          Top = 55
          TabOrder = 3
          Visible = False
          Width = 105
        end
        object cxComboBox1: TcxComboBox
          Left = 138
          Top = 56
          Properties.Items.Strings = (
            'SKPD'
            'STPD'
            'KB')
          TabOrder = 4
          Text = '====Pilih Item===='
          Width = 115
        end
        object cxButton1: TcxButton
          Left = 376
          Top = 83
          Width = 97
          Height = 25
          Caption = 'Enter >>'
          TabOrder = 5
          OnClick = cxButton1Click
          CanBeFocused = False
          LookAndFeel.Kind = lfOffice11
        end
        object cxhari: TcxCheckBox
          Left = 476
          Top = 24
          TabOrder = 6
          Transparent = True
          Visible = False
          Width = 22
        end
        object enopok: TcxMaskEdit
          Left = 141
          Top = 82
          ParentFont = False
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d+'
          Properties.MaxLength = 0
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          OnKeyDown = enopokKeyDown
          Width = 177
        end
        object cxCheckBox1: TcxCheckBox
          Left = 352
          Top = 87
          TabOrder = 8
          Transparent = True
          Visible = False
          Width = 22
        end
        object lblnmtabel: TcxLabel
          Left = 728
          Top = 48
          Caption = 'lblnmtabel'
          Visible = False
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 585
    Width = 1049
    Height = 29
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
      OnClick = btkeluarClick
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
  object ZQpenyetoranview: TZQuery
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
    Left = 587
    Top = 55
  end
  object Dsdata: TDataSource
    DataSet = dm.ZQpenyetoran
    OnStateChange = DsdataStateChange
    Left = 627
    Top = 55
  end
  object DsPenyetoranview: TDataSource
    DataSet = ZQpenyetoranview
    Left = 590
    Top = 87
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
    Left = 691
    Top = 71
  end
end
