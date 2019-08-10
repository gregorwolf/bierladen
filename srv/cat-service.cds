using my.beershop as my from '../db/data-model';

service CatalogService {
    @odata.draft.enabled
    entity Beers as projection on my.Beers;
}
