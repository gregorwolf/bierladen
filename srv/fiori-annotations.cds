using CatalogService as srv from './cat-service';


annotate srv.Beers with @(

  UI.SelectionFields: [ name, brand, style ],

  UI.LineItem: [
    { Value: BeerID },
    { Value: name   },
    { Value: brand  },
    { Value: style  },
    { Value: stock  }
  ],

  UI.HeaderInfo: {
    Title: { Value: name },
    Description: { Value: BeerID },
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
      {Value: BeerID },
      {Value: name   },
      {Value: brand  },
      {Value: style  },
      {Value: stock  }
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