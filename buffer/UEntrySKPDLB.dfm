object FormEntrySKPDLB: TFormEntrySKPDLB
  Left = 188
  Top = 158
  AutoScroll = False
  Caption = 'Form Entry BPHTB Lebih Bayar'
  ClientHeight = 446
  ClientWidth = 916
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
    Width = 916
    Height = 418
    Align = alClient
    BevelOuter = bvNone
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      895
      414)
    object Panel5: TPanel
      Left = 11
      Top = 9
      Width = 838
      Height = 542
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      DesignSize = (
        838
        542)
      object cxGroupBox2: TcxGroupBox
        Left = 29
        Top = 144
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
        Height = 388
        Width = 790
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
        object LblSptalamat: TLabel
          Left = 113
          Top = 60
          Width = 83
          Height = 13
          Caption = 'Tanggal Pajak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object LblSptnama: TLabel
          Left = 113
          Top = 29
          Width = 61
          Height = 13
          Caption = 'SPT Nama'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
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
          Caption = 'Setoran Pajak  (SSPD)'
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
          Left = 46
          Top = 212
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
          Top = 262
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
          Left = 398
          Top = 212
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
          Left = 45
          Top = 159
          Width = 88
          Height = 16
          AutoSize = False
          Caption = 'Jumlah Setor'
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
          Top = 299
          Width = 184
          Height = 17
          AutoSize = False
          Caption = 'Lebih Bayar (SKPDLB)'
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
          Top = 334
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
          Left = 407
          Top = 332
          Width = 136
          Height = 16
          AutoSize = False
          Caption = 'Tanggal SKPDLB'
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
          Left = 27
          Top = 187
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
        object datebatasspt: TcxDateEdit
          Left = 520
          Top = 211
          EditValue = 41255d
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
          Top = 261
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 2
          Width = 288
        end
        object cxDBCurrencyEdit3: TcxDBCurrencyEdit
          Left = 181
          Top = 158
          Enabled = False
          StyleDisabled.BorderColor = cl3DLight
          StyleDisabled.BorderStyle = ebsNone
          StyleDisabled.TextColor = clBlack
          TabOrder = 3
          Width = 288
        end
        object cxDBMaskEdit4: TcxDBMaskEdit
          Left = 187
          Top = 332
          TabOrder = 4
          Width = 93
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 529
          Top = 328
          TabOrder = 5
          Width = 121
        end
        object cxDBMaskEdit1: TcxDBMaskEdit
          Left = 186
          Top = 210
          TabOrder = 6
          Width = 93
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
        Width = 790
        object Label13: TLabel
          Left = 274
          Top = 57
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
          Left = 400
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
        object lblLokasi: TLabel
          Left = 34
          Top = 57
          Width = 47
          Height = 16
          Caption = 'Lokasi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label17: TLabel
          Left = 33
          Top = 90
          Width = 81
          Height = 16
          Caption = 'Setoran Ke '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DateTimePicker1: TDateTimePicker
          Left = 133
          Top = 24
          Width = 65
          Height = 21
          Date = 41260.364556145830000000
          Format = 'yyyy'
          Time = 41260.364556145830000000
          TabOrder = 0
        end
        object DateTimePicker2: TDateTimePicker
          Left = 272
          Top = 24
          Width = 97
          Height = 21
          Date = 41260.365819074070000000
          Format = 'MMMM'
          Time = 41260.365819074070000000
          TabOrder = 1
        end
        object DateTimePicker3: TDateTimePicker
          Left = 471
          Top = 24
          Width = 41
          Height = 21
          Date = 41260.366571030090000000
          Format = 'dd'
          Time = 41260.366571030090000000
          TabOrder = 2
        end
        object cxSpinEdit1: TcxSpinEdit
          Left = 133
          Top = 88
          Style.BorderStyle = ebsFlat
          TabOrder = 3
          Width = 65
        end
        object cxTextEdit1: TcxTextEdit
          Left = 133
          Top = 56
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 125
        end
        object cxTextEdit2: TcxTextEdit
          Left = 382
          Top = 56
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 210
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 418
    Width = 916
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
      Caption = '&Baru'
      TabOrder = 0
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
end
