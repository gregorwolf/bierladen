using com.linuxdozent.capm.beershop as my from '../db/data-model';

service CatalogService {
    entity Beers as projection on my.Beers;
}
