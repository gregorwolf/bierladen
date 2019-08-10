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
        { $Type: 'UI.ReferenceFacet', Label: 'Data',  Target: '@UI.FieldGroup#Data' },
        { $Type: 'UI.ReferenceFacet', Label: 'Admin',  Target: '@UI.FieldGroup#Admin' }
      ]
    }
  ],

  UI.FieldGroup#Data: {
    Label: 'Data',
    Data: [
      {Value: ID    },
      {Value: name  },
      {Value: brand },
      {Value: style },
      {Value: stock }
    ]
  },

	UI.FieldGroup#Admin: {
    Label: 'Admin',
    Data: [
      {Value: createdBy},
      {Value: createdAt},
      {Value: modifiedBy},
      {Value: modifiedAt}
    ]
  }  
);