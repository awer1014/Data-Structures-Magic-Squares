object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Magic Square'
  ClientHeight = 603
  ClientWidth = 903
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 201
    Width = 903
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 402
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 903
    Height = 201
    Align = alTop
    TabOrder = 0
    ExplicitTop = -3
    object Label1: TLabel
      Left = 56
      Top = 44
      Width = 46
      Height = 13
      Caption = 'Intput n: '
    end
    object Label2: TLabel
      Left = 56
      Top = 113
      Width = 171
      Height = 13
      Caption = 'n must be odd number(3<=n<=21)'
    end
    object Button1: TButton
      Left = 216
      Top = 84
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 72
      Top = 86
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '5'
    end
    object GroupBox1: TGroupBox
      Left = 345
      Top = 44
      Width = 209
      Height = 105
      Caption = 'GroupBox1'
      TabOrder = 2
      object RadioButton1: TRadioButton
        Left = 16
        Top = 19
        Width = 113
        Height = 17
        Caption = 'Left-top'
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 13
        Top = 73
        Width = 113
        Height = 17
        Caption = 'Left_buttom'
        TabOrder = 1
      end
      object RadioButton3: TRadioButton
        Left = 120
        Top = 19
        Width = 113
        Height = 17
        Caption = 'Right_top'
        TabOrder = 2
      end
      object RadioButton4: TRadioButton
        Left = 120
        Top = 72
        Width = 113
        Height = 17
        Caption = 'Right-buttom'
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 560
      Top = 44
      Width = 233
      Height = 105
      Caption = 'GroupBox2'
      TabOrder = 3
      object RadioButton5: TRadioButton
        Left = 69
        Top = 19
        Width = 113
        Height = 17
        Caption = 'Top'
        TabOrder = 0
      end
      object RadioButton6: TRadioButton
        Left = 145
        Top = 49
        Width = 113
        Height = 17
        Caption = 'Right'
        TabOrder = 1
      end
      object RadioButton7: TRadioButton
        Left = 3
        Top = 49
        Width = 113
        Height = 17
        Caption = 'Left'
        TabOrder = 2
      end
      object RadioButton8: TRadioButton
        Left = 67
        Top = 72
        Width = 113
        Height = 17
        Caption = 'Buttom'
        TabOrder = 3
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 204
    Width = 903
    Height = 399
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Original'
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 895
        Height = 368
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'Memo1')
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Fixed space'
      ImageIndex = 1
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 895
        Height = 368
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'Memo2')
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Fixed space+Fixed Font'
      ImageIndex = 2
      object Memo3: TMemo
        Left = 0
        Top = 0
        Width = 895
        Height = 368
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Consolas'
        Font.Style = []
        Lines.Strings = (
          'Memo3')
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Check'
      ImageIndex = 3
      object Memo4: TMemo
        Left = 0
        Top = 0
        Width = 895
        Height = 368
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Consolas'
        Font.Style = []
        Lines.Strings = (
          'Memo4')
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Grid'
      ImageIndex = 4
      object StringGrid1: TStringGrid
        Left = 0
        Top = 0
        Width = 895
        Height = 368
        Align = alClient
        TabOrder = 0
      end
    end
  end
end
