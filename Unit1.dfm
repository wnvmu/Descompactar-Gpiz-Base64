object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 471
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 715
    Height = 471
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Decode'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 707
        Height = 97
        Align = alTop
        Caption = 'GZIP'
        TabOrder = 0
        ExplicitLeft = 3
        object gzip: TMemo
          Left = 2
          Top = 15
          Width = 703
          Height = 80
          Align = alClient
          Lines.Strings = (
            
              'H4sIAAAAAAAEAE2PTQrCMBBGrxK6N5MWq1DGLF2pCOoBoo4asJmSTFvxNp7FiymK' +
              'P7v3+N7mw0gyY6HFdEnqUp9DmmQnkaYC6PteJzq4q6a'
            
              'kj9zpbYRwaChTHcXkeJLl2pjMolDd8DLyzpYIP0FXbz0FIZsjfBn3TpwtTFEMzHh' +
              'gRut8VBXDqjQIrwV3K3HyDMYIb8TLnMV3bDepvd'
            '+iZ0XArVpRODnlQ3e/nf2eE8KnQ/g7ZR/28OrL4gAAAA==')
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 209
        Width = 707
        Height = 112
        Align = alTop
        Caption = 'RETORNO'
        TabOrder = 1
        ExplicitTop = 97
        object retorno: TMemo
          Left = 2
          Top = 15
          Width = 703
          Height = 95
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object Button1: TButton
        Left = 288
        Top = 384
        Width = 75
        Height = 25
        Caption = 'Executar'
        TabOrder = 2
        OnClick = Button1Click
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 97
        Width = 707
        Height = 112
        Align = alTop
        Caption = 'BASE64'
        TabOrder = 3
        ExplicitTop = 3
        object base64: TMemo
          Left = 2
          Top = 15
          Width = 703
          Height = 95
          Align = alClient
          TabOrder = 0
          ExplicitLeft = -3
          ExplicitTop = -24
          ExplicitWidth = 707
          ExplicitHeight = 129
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Encode'
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 165
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 707
        Height = 97
        Align = alTop
        Caption = 'XML'
        TabOrder = 0
        ExplicitTop = 8
        object Memo1: TMemo
          Left = 2
          Top = 15
          Width = 703
          Height = 80
          Align = alClient
          Lines.Strings = (
            '<loteNFPe xmlns="http://www.sefaz.es.gov.br/nfpe" '
            
              'versao="1.00"><ident><ambiente>1</ambiente><usuario>01518093728<' +
              '/usuario><senha>MDA3ODQ2</senha></ident><nfpe><inf'
            
              'NFPe><numInscricao>111608872</numInscricao><idMunicipio>62</idMu' +
              'nicipio><numAno>2022</numAno><codCpfCadastro>0151809'
            
              '3728</codCpfCadastro><codCpfTransmissao>01518093728</codCpfTrans' +
              'missao><numNotaFiscal>250</numNotaFiscal><dscModelo>4'
            '</dscModelo><numSerie>1</numSerie><datEmissao>2022-01-'
            
              '05T00:00:00</datEmissao><numDestinatario>17273557000107</numDest' +
              'inatario><idTipoOperacao>1</idTipoOperacao><idNaturezaO'
            
              'peracao>1</idNaturezaOperacao><idDestino>17</idDestino><idProdut' +
              'o>50</idProduto><vlrTotal>1600.00</vlrTotal></infNFPe></n'
            'fpe></loteNFPe>')
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 97
        Width = 707
        Height = 112
        Align = alTop
        Caption = 'COMPAQUITAR'
        TabOrder = 1
        ExplicitTop = 105
        object Memo2: TMemo
          Left = 2
          Top = 15
          Width = 703
          Height = 95
          Align = alClient
          TabOrder = 0
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 209
        Width = 707
        Height = 112
        Align = alTop
        Caption = 'BASE64'
        TabOrder = 2
        ExplicitTop = 217
        object Memo3: TMemo
          Left = 2
          Top = 15
          Width = 703
          Height = 95
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object Button2: TButton
        Left = 296
        Top = 392
        Width = 75
        Height = 25
        Caption = 'Executar'
        TabOrder = 3
        OnClick = Button2Click
      end
    end
  end
end
