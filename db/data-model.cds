namespace my.beershop;

using { managed } from '@sap/cds/common';

entity Beers : managed {
  key ID : Integer @(
    title: '{i18n>id}',
    description: '{i18n>iddescription}'
  );
  name  : String @(
    title: '{i18n>name}',
    description: '{i18n>namedescription}'
  );
  brand  : String @(
    title: '{i18n>brand}',
    description: '{i18n>branddescription}'
  );
  style  : String @(
    title: '{i18n>style}',
    description: '{i18n>styledescription}'
  );
  stock  : Integer @(
    title: '{i18n>stock}',
    description: '{i18n>stockdescription}'
  );
}
