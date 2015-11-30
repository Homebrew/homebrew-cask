cask :v1 => 'wiztoolsorg-restclient' do
  version '3.5'
  sha256 'fddd89b694548b06adc4ab65adbbef81eb47c6f206818f95f953aca577aff263'

  # fosshub.com is the official download host per the vendor homepage
  url "http://code.fosshub.com/WizToolsorg-RESTClient/download/RESTClient-#{version}.dmg"
  name 'RESTClient'
  homepage 'https://github.com/wiztools/rest-client'
  license :oss

  app 'WizTools.org RESTClient.app'
end
