object DataService: TDataService
  OldCreateOrder = True
  SessionManager = ServerDataModule.SessionManager
  ServiceSchema = Schema
  ServiceDataStreamer = DataStreamer
  ExportedDataTables = <>
  ScriptProvider = EcmaScriptProvider
  Height = 212
  Width = 216
  object DataStreamer: TDABin2DataStreamer
    Left = 32
    Top = 8
  end
  object Schema: TDASchema
    Datasets = <
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            TargetTable = 'p_module'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'ID'
                TableField = 'ID'
              end
              item
                DatasetField = 'actName'
                TableField = 'actName'
              end
              item
                DatasetField = 'moduleName'
                TableField = 'moduleName'
              end
              item
                DatasetField = 'parentAction'
                TableField = 'parentAction'
              end>
          end>
        Name = 'p_module'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'ID'
            DataType = datAutoInc
            GeneratorName = 'p_module'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'actName'
            DataType = datWideString
            Size = 50
            Required = True
          end
          item
            Name = 'moduleName'
            DataType = datWideString
            Size = 50
            Required = True
          end
          item
            Name = 'parentAction'
            DataType = datWideString
            Size = 50
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            TargetTable = 'p_partners'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'ID'
                TableField = 'ID'
              end
              item
                DatasetField = 'code'
                TableField = 'code'
              end
              item
                DatasetField = 'company'
                TableField = 'company'
              end
              item
                DatasetField = 'name'
                TableField = 'name'
              end
              item
                DatasetField = 'address'
                TableField = 'address'
              end
              item
                DatasetField = 'phone'
                TableField = 'phone'
              end
              item
                DatasetField = 'emailAdd'
                TableField = 'emailAdd'
              end
              item
                DatasetField = 'partnerType'
                TableField = 'partnerType'
              end
              item
                DatasetField = 'memo'
                TableField = 'memo'
              end>
          end>
        Name = 'p_partners'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'ID'
            DataType = datAutoInc
            GeneratorName = 'p_partners'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'code'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'company'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'name'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'address'
            DataType = datWideString
            Size = 50
          end
          item
            Name = 'phone'
            DataType = datInteger
          end
          item
            Name = 'emailAdd'
            DataType = datWideString
            Size = 50
          end
          item
            Name = 'partnerType'
            DataType = datWideString
            Size = 10
            Required = True
          end
          item
            Name = 'memo'
            DataType = datWideString
            Size = 100
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            TargetTable = 'p_usergroup'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'ID'
                TableField = 'ID'
              end
              item
                DatasetField = 'groupName'
                TableField = 'groupName'
              end
              item
                DatasetField = 'isAdmin'
                TableField = 'isAdmin'
              end
              item
                DatasetField = 'auText'
                TableField = 'auText'
              end>
          end>
        Name = 'p_usergroup'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'ID'
            DataType = datAutoInc
            GeneratorName = 'p_usergroup'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'groupName'
            DataType = datWideString
            Size = 50
            Required = True
          end
          item
            Name = 'isAdmin'
            DataType = datBoolean
          end
          item
            Name = 'auText'
            DataType = datWideMemo
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'st_product'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'productId'
                TableField = 'productId'
              end
              item
                DatasetField = 'productCode'
                TableField = 'productCode'
              end
              item
                DatasetField = 'productName'
                TableField = 'productName'
              end
              item
                DatasetField = 'price'
                TableField = 'price'
              end
              item
                DatasetField = 'kind'
                TableField = 'kind'
              end
              item
                DatasetField = 'style'
                TableField = 'style'
              end
              item
                DatasetField = 'spec'
                TableField = 'spec'
              end
              item
                DatasetField = 'color'
                TableField = 'color'
              end
              item
                DatasetField = 'unit'
                TableField = 'unit'
              end
              item
                DatasetField = 'productType'
                TableField = 'productType'
              end
              item
                DatasetField = 'tempNum'
                TableField = 'tempNum'
              end>
          end>
        Name = 'st_product'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'productId'
            DataType = datAutoInc
            GeneratorName = 'st_product'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'productCode'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'productName'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'price'
            DataType = datWideString
            Size = 20
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'kind'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'style'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'spec'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'color'
            DataType = datWideString
            Size = 10
          end
          item
            Name = 'unit'
            DataType = datWideString
            Size = 10
          end
          item
            Name = 'productType'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'tempNum'
            DataType = datWideString
            Size = 50
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'st_kind'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'KindName'
                TableField = 'KindName'
              end>
          end>
        Name = 'st_kind'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'st_kind'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'KindName'
            DataType = datWideString
            Size = 20
            Required = True
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'st_company'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'CompanyName'
                TableField = 'CompanyName'
              end>
          end>
        Name = 'st_company'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'st_company'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'CompanyName'
            DataType = datWideString
            Size = 30
            Required = True
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'st_location'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'locationNum'
                TableField = 'locationNum'
              end
              item
                DatasetField = 'locationName'
                TableField = 'locationName'
              end>
          end>
        Name = 'st_location'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'st_location'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'locationNum'
            DataType = datWideString
            Size = 10
          end
          item
            Name = 'locationName'
            DataType = datWideString
            Size = 20
            Required = True
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'pu_orderDt'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'puOrderNum'
                TableField = 'puOrderNum'
              end
              item
                DatasetField = 'productID'
                TableField = 'productID'
              end
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end
              item
                DatasetField = 'price'
                TableField = 'price'
              end
              item
                DatasetField = 'status'
                TableField = 'status'
              end
              item
                DatasetField = 'memo'
                TableField = 'memo'
              end>
          end>
        Name = 'pu_orderDt'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'pu_orderDt'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'puOrderNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'productID'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'qty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'price'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'status'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'memo'
            DataType = datWideString
            Size = 50
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'pu_order'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'puOrderNum'
                TableField = 'puOrderNum'
              end
              item
                DatasetField = 'partnerId'
                TableField = 'partnerId'
              end
              item
                DatasetField = 'puStatus'
                TableField = 'puStatus'
              end
              item
                DatasetField = 'puOrderDate'
                TableField = 'puOrderDate'
              end
              item
                DatasetField = 'puOrderUser'
                TableField = 'puOrderUser'
              end
              item
                DatasetField = 'puCreator'
                TableField = 'puCreator'
              end
              item
                DatasetField = 'puCreateDate'
                TableField = 'puCreateDate'
              end
              item
                DatasetField = 'puOutAddress'
                TableField = 'puOutAddress'
              end
              item
                DatasetField = 'amountPay'
                TableField = 'amountPay'
              end
              item
                DatasetField = 'memo'
                TableField = 'memo'
              end>
          end>
        Name = 'pu_order'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'pu_order'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'puOrderNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'partnerId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'puStatus'
            DataType = datWideString
            Size = 10
            Required = True
          end
          item
            Name = 'puOrderDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'puOrderUser'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'puCreator'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'puCreateDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'puOutAddress'
            DataType = datWideString
            Size = 50
          end
          item
            Name = 'amountPay'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'memo'
            DataType = datWideString
            Size = 50
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'p_user'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'ID'
                TableField = 'ID'
              end
              item
                DatasetField = 'loginName'
                TableField = 'loginName'
              end
              item
                DatasetField = 'fullName'
                TableField = 'fullName'
              end
              item
                DatasetField = 'password'
                TableField = 'password'
              end
              item
                DatasetField = 'userGroup_ID'
                TableField = 'userGroup_ID'
              end>
          end>
        Name = 'p_user'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'ID'
            DataType = datAutoInc
            GeneratorName = 'p_user'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'loginName'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'fullName'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'password'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'userGroup_ID'
            DataType = datWideString
            Size = 10
          end>
      end
      item
        Params = <>
        Statements = <
          item
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT '#9#10#9'[id],[puOrderNum],pu_orderdt.[productID],[qty],'#10#9'pu_or' +
              'derdt.[price],[status],'#10#9'[productName],[kind],[style],[spec],[co' +
              'lor],[unit],st_product.[productId]'#10'FROM '#10#9'[pu_orderDt] left join' +
              ' [st_product] '#10#9'on pu_orderdt.productID=st_product.productId'#10'WHE' +
              'RE '#10#9'{WHERE} '
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'puOrderNum'
                TableField = 'puOrderNum'
              end
              item
                DatasetField = 'productID'
                TableField = 'productID'
              end
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end
              item
                DatasetField = 'price'
                TableField = 'price'
              end
              item
                DatasetField = 'status'
                TableField = 'status'
              end
              item
                DatasetField = 'productName'
                TableField = 'productName'
              end
              item
                DatasetField = 'kind'
                TableField = 'kind'
              end
              item
                DatasetField = 'style'
                TableField = 'style'
              end
              item
                DatasetField = 'spec'
                TableField = 'spec'
              end
              item
                DatasetField = 'color'
                TableField = 'color'
              end
              item
                DatasetField = 'unit'
                TableField = 'unit'
              end
              item
                DatasetField = 'productId_1'
                TableField = 'productId_1'
              end>
          end>
        Name = 'pu_orderDtProduct'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
          end
          item
            Name = 'puOrderNum'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'productID'
            DataType = datInteger
          end
          item
            Name = 'qty'
            DataType = datCurrency
            DecimalPrecision = 12
            DecimalScale = 4
          end
          item
            Name = 'price'
            DataType = datCurrency
            DecimalPrecision = 12
            DecimalScale = 4
          end
          item
            Name = 'status'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'productName'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'kind'
            DataType = datInteger
          end
          item
            Name = 'style'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'spec'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'color'
            DataType = datWideString
            Size = 10
          end
          item
            Name = 'unit'
            DataType = datWideString
            Size = 10
          end
          item
            Name = 'productId_1'
            DataType = datAutoInc
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'st_instorageDt'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'inCode'
                TableField = 'inCode'
              end
              item
                DatasetField = 'partnersId'
                TableField = 'partnersId'
              end
              item
                DatasetField = 'productId'
                TableField = 'productId'
              end
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end
              item
                DatasetField = 'price'
                TableField = 'price'
              end
              item
                DatasetField = 'locationId'
                TableField = 'locationId'
              end
              item
                DatasetField = 'companyId'
                TableField = 'companyId'
              end
              item
                DatasetField = 'state'
                TableField = 'state'
              end
              item
                DatasetField = 'oddDtId'
                TableField = 'oddDtId'
              end>
          end>
        Name = 'st_instorageDt'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'st_instorageDt'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'inCode'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'partnersId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'productId'
            DataType = datFixedWideChar
            Size = 10
            Required = True
          end
          item
            Name = 'qty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'price'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'locationId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'companyId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'state'
            DataType = datWideString
            Size = 10
            Required = True
          end
          item
            Name = 'oddDtId'
            DataType = datWideString
            Size = 20
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'st_instorage'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'inCode'
                TableField = 'inCode'
              end
              item
                DatasetField = 'inType'
                TableField = 'inType'
              end
              item
                DatasetField = 'locationId'
                TableField = 'locationId'
              end
              item
                DatasetField = 'companyId'
                TableField = 'companyId'
              end
              item
                DatasetField = 'inDate'
                TableField = 'inDate'
              end
              item
                DatasetField = 'consignee'
                TableField = 'consignee'
              end
              item
                DatasetField = 'operatorDate'
                TableField = 'operatorDate'
              end
              item
                DatasetField = 'operator'
                TableField = 'operator'
              end
              item
                DatasetField = 'inState'
                TableField = 'inState'
              end
              item
                DatasetField = 'department'
                TableField = 'department'
              end
              item
                DatasetField = 'memo'
                TableField = 'memo'
              end>
          end>
        Name = 'st_instorage'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'st_instorage'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'inCode'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'inType'
            DataType = datWideString
            Size = 10
            Required = True
          end
          item
            Name = 'locationId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'companyId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'inDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'consignee'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'operatorDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'operator'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'inState'
            DataType = datWideString
            Size = 10
            Required = True
          end
          item
            Name = 'department'
            DataType = datFixedWideChar
            Size = 10
          end
          item
            Name = 'memo'
            DataType = datWideString
            Size = 50
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'st_stock'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'repertoryId'
                TableField = 'repertoryId'
              end
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end
              item
                DatasetField = 'lastMonthQty'
                TableField = 'lastMonthQty'
              end
              item
                DatasetField = 'inQty'
                TableField = 'inQty'
              end
              item
                DatasetField = 'outQty'
                TableField = 'outQty'
              end
              item
                DatasetField = 'recordDate'
                TableField = 'recordDate'
              end>
          end>
        Name = 'st_stock'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'st_stock'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'repertoryId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'qty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'lastMonthQty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'inQty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'outQty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'recordDate'
            DataType = datDateTime
            Required = True
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'pu_orderpay'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'payCode'
                TableField = 'payCode'
              end
              item
                DatasetField = 'partnerId'
                TableField = 'partnerId'
              end
              item
                DatasetField = 'payUser'
                TableField = 'payUser'
              end
              item
                DatasetField = 'payAmount'
                TableField = 'payAmount'
              end
              item
                DatasetField = 'payNum'
                TableField = 'payNum'
              end
              item
                DatasetField = 'payDate'
                TableField = 'payDate'
              end
              item
                DatasetField = 'payType'
                TableField = 'payType'
              end
              item
                DatasetField = 'operator'
                TableField = 'operator'
              end
              item
                DatasetField = 'operatorDate'
                TableField = 'operatorDate'
              end>
          end>
        Name = 'pu_orderpay'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'pu_orderpay'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'payCode'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'partnerId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'payUser'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'payAmount'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'payNum'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'payDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'payType'
            DataType = datWideString
            Size = 10
            Required = True
          end
          item
            Name = 'operator'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'operatorDate'
            DataType = datDateTime
            Required = True
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'pu_orderpaydt'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'payCode'
                TableField = 'payCode'
              end
              item
                DatasetField = 'oddNum'
                TableField = 'oddNum'
              end
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end
              item
                DatasetField = 'price'
                TableField = 'price'
              end
              item
                DatasetField = 'totalAmount'
                TableField = 'totalAmount'
              end
              item
                DatasetField = 'status'
                TableField = 'status'
              end>
          end>
        Name = 'pu_orderpaydt'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'pu_orderpaydt'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'payCode'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'oddNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'qty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'price'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'totalAmount'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'status'
            DataType = datWideString
            Size = 10
            Required = True
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'tr_tradingProof'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'trId'
                TableField = 'trId'
              end
              item
                DatasetField = 'partnerId'
                TableField = 'partnerId'
              end
              item
                DatasetField = 'trAmount'
                TableField = 'trAmount'
              end
              item
                DatasetField = 'trDate'
                TableField = 'trDate'
              end
              item
                DatasetField = 'operatorUser'
                TableField = 'operatorUser'
              end
              item
                DatasetField = 'operatorDate'
                TableField = 'operatorDate'
              end
              item
                DatasetField = 'trNum'
                TableField = 'trNum'
              end
              item
                DatasetField = 'status'
                TableField = 'status'
              end
              item
                DatasetField = 'memo'
                TableField = 'memo'
              end>
          end>
        Name = 'tr_tradingProof'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'trId'
            DataType = datAutoInc
            GeneratorName = 'tr_tradingProof'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'partnerId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'trAmount'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'trDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'operatorUser'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'operatorDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'trNum'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'status'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'memo'
            DataType = datWideString
            Size = 50
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'tr_tradingProofDt'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'trId'
                TableField = 'trId'
              end
              item
                DatasetField = 'oddNum'
                TableField = 'oddNum'
              end
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end
              item
                DatasetField = 'price'
                TableField = 'price'
              end
              item
                DatasetField = 'totalAmount'
                TableField = 'totalAmount'
              end
              item
                DatasetField = 'status'
                TableField = 'status'
              end>
          end>
        Name = 'tr_tradingProofDt'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'tr_tradingProofDt'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'trId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'oddNum'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'qty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'price'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'totalAmount'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'status'
            DataType = datWideString
            Size = 20
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'st_outstorageDt'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'outCode'
                TableField = 'outCode'
              end
              item
                DatasetField = 'productId'
                TableField = 'productId'
              end
              item
                DatasetField = 'locationId'
                TableField = 'locationId'
              end
              item
                DatasetField = 'companyId'
                TableField = 'companyId'
              end
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end
              item
                DatasetField = 'price'
                TableField = 'price'
              end
              item
                DatasetField = 'status'
                TableField = 'status'
              end
              item
                DatasetField = 'partnersId'
                TableField = 'partnersId'
              end
              item
                DatasetField = 'oddDtId'
                TableField = 'oddDtId'
              end>
          end>
        Name = 'st_outstorageDt'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'st_outstorageDt'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'outCode'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'productId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'locationId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'companyId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'qty'
            DataType = datWideString
            Size = 50
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'price'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'status'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'partnersId'
            DataType = datInteger
          end
          item
            Name = 'oddDtId'
            DataType = datWideString
            Size = 20
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'st_outstorage'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'outCode'
                TableField = 'outCode'
              end
              item
                DatasetField = 'outType'
                TableField = 'outType'
              end
              item
                DatasetField = 'outUser'
                TableField = 'outUser'
              end
              item
                DatasetField = 'outDate'
                TableField = 'outDate'
              end
              item
                DatasetField = 'operator'
                TableField = 'operator'
              end
              item
                DatasetField = 'operatorDate'
                TableField = 'operatorDate'
              end
              item
                DatasetField = 'outState'
                TableField = 'outState'
              end
              item
                DatasetField = 'memo'
                TableField = 'memo'
              end>
          end>
        Name = 'st_outstorage'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'st_outstorage'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'outCode'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'outType'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'outUser'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'outDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'operator'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'operatorDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'outState'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'memo'
            DataType = datWideString
            Size = 50
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'st_repertoryDetail'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'productId'
                TableField = 'productId'
              end
              item
                DatasetField = 'locationId'
                TableField = 'locationId'
              end
              item
                DatasetField = 'companyId'
                TableField = 'companyId'
              end
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end
              item
                DatasetField = 'recordDate'
                TableField = 'recordDate'
              end
              item
                DatasetField = 'recordUser'
                TableField = 'recordUser'
              end
              item
                DatasetField = 'recordType'
                TableField = 'recordType'
              end
              item
                DatasetField = 'idCardNum'
                TableField = 'idCardNum'
              end
              item
                DatasetField = 'incode'
                TableField = 'incode'
              end
              item
                DatasetField = 'dtId'
                TableField = 'dtId'
              end>
          end>
        Name = 'st_repertoryDetail'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'st_repertoryDetail'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'productId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'locationId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'companyId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'qty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'recordDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'recordUser'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'recordType'
            DataType = datWideString
            Size = 10
            Required = True
          end
          item
            Name = 'idCardNum'
            DataType = datWideString
            Size = 50
          end
          item
            Name = 'incode'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'dtId'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'st_check'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'checkNum'
                TableField = 'checkNum'
              end
              item
                DatasetField = 'checkDate'
                TableField = 'checkDate'
              end
              item
                DatasetField = 'checkUser'
                TableField = 'checkUser'
              end
              item
                DatasetField = 'memo'
                TableField = 'memo'
              end>
          end>
        Name = 'st_check'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'st_check'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'checkNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'checkDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'checkUser'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'memo'
            DataType = datWideString
            Size = 50
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'st_checkdt'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'checkNum'
                TableField = 'checkNum'
              end
              item
                DatasetField = 'repertoryId'
                TableField = 'repertoryId'
              end
              item
                DatasetField = 'checkdtQty'
                TableField = 'checkdtQty'
              end
              item
                DatasetField = 'checkdtProfit'
                TableField = 'checkdtProfit'
              end
              item
                DatasetField = 'repertoryQty'
                TableField = 'repertoryQty'
              end>
          end>
        Name = 'st_checkdt'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'st_checkdt'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'checkNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'repertoryId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'checkdtQty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'checkdtProfit'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'repertoryQty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'pu_seOrder'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'seOrderNum'
                TableField = 'seOrderNum'
              end
              item
                DatasetField = 'partnersId'
                TableField = 'partnersId'
              end
              item
                DatasetField = 'structureNum'
                TableField = 'structureNum'
              end
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end
              item
                DatasetField = 'productId'
                TableField = 'productId'
              end
              item
                DatasetField = 'seOrderDate'
                TableField = 'seOrderDate'
              end
              item
                DatasetField = 'seDeliveryDate'
                TableField = 'seDeliveryDate'
              end
              item
                DatasetField = 'seStatus'
                TableField = 'seStatus'
              end
              item
                DatasetField = 'seCreator'
                TableField = 'seCreator'
              end
              item
                DatasetField = 'seAddress'
                TableField = 'seAddress'
              end
              item
                DatasetField = 'sePayment'
                TableField = 'sePayment'
              end
              item
                DatasetField = 'seSalesman'
                TableField = 'seSalesman'
              end
              item
                DatasetField = 'memo'
                TableField = 'memo'
              end>
          end>
        Name = 'pu_seOrder'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'pu_seOrder'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'seOrderNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'partnersId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'structureNum'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'qty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'productId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'seOrderDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'seDeliveryDate'
            DataType = datDateTime
          end
          item
            Name = 'seStatus'
            DataType = datWideString
            Size = 10
            Required = True
          end
          item
            Name = 'seCreator'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'seAddress'
            DataType = datWideString
            Size = 50
          end
          item
            Name = 'sePayment'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'seSalesman'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'memo'
            DataType = datWideString
            Size = 150
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'pu_seOrderDt'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'seOrderNum'
                TableField = 'seOrderNum'
              end
              item
                DatasetField = 'productId'
                TableField = 'productId'
              end
              item
                DatasetField = 'seOrderPrice'
                TableField = 'seOrderPrice'
              end
              item
                DatasetField = 'seOrderQty'
                TableField = 'seOrderQty'
              end
              item
                DatasetField = 'seNoDeliveryQty'
                TableField = 'seNoDeliveryQty'
              end
              item
                DatasetField = 'seStatus'
                TableField = 'seStatus'
              end>
          end>
        Name = 'pu_seOrderDt'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datInteger
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'seOrderNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'productId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'seOrderPrice'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'seOrderQty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'seNoDeliveryQty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
          end
          item
            Name = 'seStatus'
            DataType = datWideString
            Size = 10
            Required = True
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'pr_plan'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'planNum'
                TableField = 'planNum'
              end
              item
                DatasetField = 'seOrderNum'
                TableField = 'seOrderNum'
              end
              item
                DatasetField = 'productId'
                TableField = 'productId'
              end
              item
                DatasetField = 'orderQty'
                TableField = 'orderQty'
              end
              item
                DatasetField = 'orderFinishQty'
                TableField = 'orderFinishQty'
              end
              item
                DatasetField = 'orderDate'
                TableField = 'orderDate'
              end
              item
                DatasetField = 'beginOrderDate'
                TableField = 'beginOrderDate'
              end
              item
                DatasetField = 'finishOrderDate'
                TableField = 'finishOrderDate'
              end
              item
                DatasetField = 'orderState'
                TableField = 'orderState'
              end
              item
                DatasetField = 'orderUser'
                TableField = 'orderUser'
              end
              item
                DatasetField = 'memo'
                TableField = 'memo'
              end>
          end>
        Name = 'pr_plan'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'pr_plan'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'planNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'seOrderNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'productId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'orderQty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'orderFinishQty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'orderDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'beginOrderDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'finishOrderDate'
            DataType = datDateTime
            Required = True
          end
          item
            Name = 'orderState'
            DataType = datWideString
            Size = 10
            Required = True
          end
          item
            Name = 'orderUser'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'memo'
            DataType = datWideString
            Size = 150
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'select SUM(st.qty) as qty,st.productId from st_repertoryDetail a' +
              's st group by st.productId'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end
              item
                DatasetField = 'productId'
                TableField = 'productId'
              end>
          end>
        Name = 'st_repertoryMonth'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'qty'
            DataType = datDecimal
            DecimalPrecision = 38
            DecimalScale = 4
          end
          item
            Name = 'productId'
            DataType = datInteger
            Required = True
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'st_structure'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'structureNum'
                TableField = 'structureNum'
              end
              item
                DatasetField = 'structureName'
                TableField = 'structureName'
              end
              item
                DatasetField = 'structureDes'
                TableField = 'structureDes'
              end>
          end>
        Name = 'st_structure'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'structureNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'structureName'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'structureDes'
            DataType = datWideString
            Size = 50
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'st_structureDt'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'structureNum'
                TableField = 'structureNum'
              end
              item
                DatasetField = 'productId'
                TableField = 'productId'
              end
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end>
          end>
        Name = 'st_structureDt'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'st_structureDt'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'structureNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'productId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'qty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'select * from st_structuredt as st left join st_product as pr on' +
              ' st.productId=pr.productId'#10'WHERE '#10#9'{WHERE} '
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'id'
                TableField = 'id'
              end
              item
                DatasetField = 'structureNum'
                TableField = 'structureNum'
              end
              item
                DatasetField = 'productId'
                TableField = 'productId'
              end
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end
              item
                DatasetField = 'productId_1'
                TableField = 'productId_1'
              end
              item
                DatasetField = 'productCode'
                TableField = 'productCode'
              end
              item
                DatasetField = 'productName'
                TableField = 'productName'
              end
              item
                DatasetField = 'price'
                TableField = 'price'
              end
              item
                DatasetField = 'kind'
                TableField = 'kind'
              end
              item
                DatasetField = 'style'
                TableField = 'style'
              end
              item
                DatasetField = 'spec'
                TableField = 'spec'
              end
              item
                DatasetField = 'color'
                TableField = 'color'
              end
              item
                DatasetField = 'unit'
                TableField = 'unit'
              end
              item
                DatasetField = 'productType'
                TableField = 'productType'
              end
              item
                DatasetField = 'tempNum'
                TableField = 'tempNum'
              end>
          end>
        Name = 'st_structureProduct'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'id'
            DataType = datAutoInc
            GeneratorName = 'st_structureDt'
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'structureNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'productId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'qty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
          end
          item
            Name = 'productId_1'
            DataType = datAutoInc
          end
          item
            Name = 'productCode'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'productName'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'price'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
          end
          item
            Name = 'kind'
            DataType = datInteger
          end
          item
            Name = 'style'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'spec'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'color'
            DataType = datWideString
            Size = 10
          end
          item
            Name = 'unit'
            DataType = datWideString
            Size = 10
          end
          item
            Name = 'productType'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'tempNum'
            DataType = datWideString
            Size = 50
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'select * from'#10'(select pu.puOrderNum,pu.productID,pu.qty,pu.price' +
              ',SUM(st.qty) as inQty '#10'from pu_orderDt as pu right join st_insto' +
              'rageDt as st on pu.id=st.oddDtId'#10'group by pu.id,pu.productID,pu.' +
              'qty,pu.price,pu.puOrderNum) as t'#10'WHERE '#10#9'{WHERE} '#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'puOrderNum'
                TableField = 'puOrderNum'
              end
              item
                DatasetField = 'productID'
                TableField = 'productID'
              end
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end
              item
                DatasetField = 'price'
                TableField = 'price'
              end
              item
                DatasetField = 'inQty'
                TableField = 'inQty'
              end>
          end>
        Name = 'pu_orderDetail'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'puOrderNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'productID'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'qty'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'price'
            DataType = datDecimal
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'inQty'
            DataType = datDecimal
            DecimalPrecision = 38
            DecimalScale = 4
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'select * from pu_seOrderPr left join st_product on pu_seOrderPr.' +
              'productId=st_product.productId'#10'WHERE '#10#9'{WHERE} '
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'seOrderNum'
                TableField = 'seOrderNum'
              end
              item
                DatasetField = 'productId'
                TableField = 'productId'
              end
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end
              item
                DatasetField = 'productId_1'
                SQLOrigin = 'productId_1'
              end
              item
                DatasetField = 'productCode'
                SQLOrigin = 'productCode'
              end
              item
                DatasetField = 'productName'
                SQLOrigin = 'productName'
              end
              item
                DatasetField = 'price'
                SQLOrigin = 'price'
              end
              item
                DatasetField = 'kind'
                SQLOrigin = 'kind'
              end
              item
                DatasetField = 'style'
                SQLOrigin = 'style'
              end
              item
                DatasetField = 'spec'
                SQLOrigin = 'spec'
              end
              item
                DatasetField = 'color'
                SQLOrigin = 'color'
              end
              item
                DatasetField = 'unit'
                SQLOrigin = 'unit'
              end
              item
                DatasetField = 'productType'
                SQLOrigin = 'productType'
              end
              item
                DatasetField = 'tempNum'
                SQLOrigin = 'tempNum'
              end>
          end>
        Name = 'pu_seOrderPr'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'seOrderNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'productId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'qty'
            DataType = datWideString
            Size = 20
            DecimalPrecision = 18
            DecimalScale = 4
          end
          item
            Name = 'productId_1'
            DataType = datAutoInc
          end
          item
            Name = 'productCode'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'productName'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'price'
            DataType = datWideString
            Size = 20
            DecimalPrecision = 18
            DecimalScale = 4
            Required = True
          end
          item
            Name = 'kind'
            DataType = datInteger
          end
          item
            Name = 'style'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'spec'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'color'
            DataType = datWideString
            Size = 10
          end
          item
            Name = 'unit'
            DataType = datWideString
            Size = 10
          end
          item
            Name = 'productType'
            DataType = datWideString
            Size = 20
          end
          item
            Name = 'tempNum'
            DataType = datWideString
            Size = 50
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'Connection to sanhe'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'pu_seOrderPr'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'seOrderNum'
                TableField = 'seOrderNum'
              end
              item
                DatasetField = 'productId'
                TableField = 'productId'
              end
              item
                DatasetField = 'qty'
                TableField = 'qty'
              end>
          end>
        Name = 'pu_seOrderPrBe'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'seOrderNum'
            DataType = datWideString
            Size = 20
            Required = True
          end
          item
            Name = 'productId'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'qty'
            DataType = datWideString
            Size = 20
            Required = True
          end>
      end>
    JoinDataTables = <>
    UnionDataTables = <>
    Commands = <>
    RelationShips = <>
    UpdateRules = <>
    Version = 0
    ConnectionManager = ServerDataModule.ConnectionManager
    DataDictionary = ServerDataModule.DataDictionary
    Left = 32
    Top = 56
  end
  object EcmaScriptProvider: TDASpiderMonkeyScriptProvider
    Left = 88
    Top = 8
  end
end
