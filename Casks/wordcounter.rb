cask :v1 => 'wordcounter' do
  version :latest
  sha256 :no_check

  url 'http://wordcounterapp.com/download'
  name 'WordCounter'
  homepage 'http://wordcounterapp.com/'
  license :commercial

  app 'WordCounter.app'
end
