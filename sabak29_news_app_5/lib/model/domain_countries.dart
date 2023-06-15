class Country {
  const Country({required this.name, required this.domain});
  final String name;
  final String domain;
}

const Country oae = Country(name: 'OAE', domain: 'ae');
const Country argentina = Country(name: 'Argentina', domain: 'ar');
const Country franse = Country(name: 'Franse', domain: 'fr');
const Country korea = Country(name: 'Korea', domain: 'kr');
const Country poland = Country(name: 'Poland', domain: 'pl');
const Country russia = Country(name: 'Russia', domain: 'ru');
const Country italia = Country(name: 'Italia', domain: 'lt');

Set<Country> countriesSet = {
  oae,
  argentina,
  franse,
  korea,
  poland,
  russia,
  italia
};
