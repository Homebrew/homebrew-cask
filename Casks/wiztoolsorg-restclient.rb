cask :v1 => 'wiztoolsorg-restclient' do
  version '3.2.2'
  sha256 'd920279ef6406acb02a12485e1e8adaf1942cf196f0628c8e6b40744f6120aac'

  url "https://rest-client.googlecode.com/files/restclient-ui-#{version}.dmg"
  homepage 'https://code.google.com/p/rest-client'
  license :oss

  app 'WizTools.org RESTClient.app'
end
