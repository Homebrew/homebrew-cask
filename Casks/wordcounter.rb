cask :v1 => 'wordcounter' do
  version :latest
  sha256 :no_check

  url 'http://wordcounterapp.com/download'
  name 'WordCounter'
  appcast 'http://appcasts.christiantietze.de/wordcounter/v1/beta.xml',
          :sha256 => '43d85462e4502f62fc4dcc39f2df83b6c1cfdbddb801a8cc30c7c9bace1e13c5'
  homepage 'http://wordcounterapp.com/'
  license :commercial

  app 'WordCounter.app'
end
