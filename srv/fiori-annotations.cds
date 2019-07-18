using CatalogService as srv from './cat-service';


annotate srv.Beers with @(
  UI.LineItem: [
    {$Type: 'UI.DataField', Value: ID    },
    {$Type: 'UI.DataField', Value: name  },
    {$Type: 'UI.DataField', Value: brand },
    {$Type: 'UI.DataField', Value: style },
    {$Type: 'UI.DataField', Value: stock }
  ],

  UI.HeaderInfo: {
    Title: { Value: name },
    Description: { Value: ID },
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
    {$Type: 'UI.DataField', Value: ID    },
    {$Type: 'UI.DataField', Value: name  },
    {$Type: 'UI.DataField', Value: brand },
    {$Type: 'UI.DataField', Value: style },
    {$Type: 'UI.DataField', Value: stock }
    ]
  }
);