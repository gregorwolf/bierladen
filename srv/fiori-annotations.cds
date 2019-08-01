using CatalogService as srv from './cat-service';


annotate srv.Beers with @(
  // UI.SelectionFields: [ IDSystem, ContractID, BusinessValidFrom, BusinessValidTo, name, style ],

  UI.LineItem: [
    {$Type: 'UI.DataField', Value: IDSystem    },
    {$Type: 'UI.DataField', Value: ContractID    },
    {$Type: 'UI.DataField', Value: name  },
    {$Type: 'UI.DataField', Value: brand },
    {$Type: 'UI.DataField', Value: style },
    {$Type: 'UI.DataField', Value: stock }
  ],

  UI.HeaderInfo: {
    Title: { Value: name },
    Description: { Value: ContractID },
  },

  UI.Facets: [
    {
      $Type:'UI.CollectionFacet',
      Facets:[
        { $Type: 'UI.ReferenceFacet', Label: 'Data',  Target: '@UI.FieldGroup#Data' }
      ]
    }
  ],

  UI.FieldGroup#Data: {
    Label: 'Data',
    Data: [
    {$Type: 'UI.DataField', Value: IDSystem    },
    {$Type: 'UI.DataField', Value: ContractID    },
    {$Type: 'UI.DataField', Value: BusinessValidFrom    },
    {$Type: 'UI.DataField', Value: BusinessValidTo    },
    {$Type: 'UI.DataField', Value: SystemValidFrom    },
    {$Type: 'UI.DataField', Value: SystemValidTo    },
    {$Type: 'UI.DataField', Value: name  },
    {$Type: 'UI.DataField', Value: brand },
    {$Type: 'UI.DataField', Value: style },
    {$Type: 'UI.DataField', Value: stock }
    ]
  }
);