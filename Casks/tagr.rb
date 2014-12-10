cask :v1 => 'tagr' do
  version '3.1.2'
  sha256 '65c6c7296e091aec46acfe2f3ba147e4f77c6437fe9c4b7261d791f1b335a109'

  url 'http://www.harald-schubert.net/data/Tagr.zip'
  appcast 'http://www.harald-schubert.net/data/tagr-appcast.xml',
          :sha256 => 'baa3012b4fc391b0f5f296e8fa804518cb8af103a4d6588ba774ce57a9607835'
  homepage 'http://www.entwicklungsfreu.de/tagr.html'
  license :unknown    # todo: improve this machine-generated value

  app 'Tagr.app'
end
