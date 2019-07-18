using my.beershop as my from '../db/data-model';

service CatalogService {
    entity Beers as projection on my.Beers;
}
