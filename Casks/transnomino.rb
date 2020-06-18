cask 'transnomino' do
  version '4.0'
  sha256 'f19444fec6076fa4165d79a4c931ee023651502426df4beb46ff5994c6958426'

  url 'https://transnomino.bastiaanverreijt.com/download/Transnomino-4.0.dmg'
  name 'Transnomino'
  homepage 'https://transnomino.bastiaanverreijt.com/'

  auto_updates true

  app 'Transnomino.app'
end
