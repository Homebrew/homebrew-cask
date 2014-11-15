cask :v1 => 'unison' do
  version '2.40.69'
  sha256 '2bcc460511f2b43fa1613cc5f9ba4dd59bb12d40b5b9fb2e9f21adaf854bcf3b'

  url "http://alan.petitepomme.net/unison/assets/Unison-#{version}_x64.dmg"
  homepage 'http://www.cis.upenn.edu/~bcpierce/unison/'
  license :unknown

  app 'Unison.app'
end
