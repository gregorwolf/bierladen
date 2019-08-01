namespace com.linuxdozent.capm.beershop;

entity Beers {
  key IDSystem                                               : String(40)   default '' @(
      title: 'ID System',
      );
  key ContractID                                             : String(128)  default '' @(
      title: 'Contract ID',
      );
  key BusinessValidFrom                                      : Date @(
      title: 'Business Valid From',
      );
  key BusinessValidTo                                        : Date @(
      title: 'Business Valid To',
      );
      SystemValidFrom                                        : Timestamp not null @(
      title: 'System Valid From',
      );
      SystemValidTo                                          : Timestamp not null @(
      title: 'System Valid To',
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
