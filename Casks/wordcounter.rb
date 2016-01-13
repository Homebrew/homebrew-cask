cask 'wordcounter' do
  version '1.3.3'
  sha256 '68219430aef534160b3c9264778bcac04c78a6ffe3c30c06a1f0ebfe622d034a'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/wordcounterapp/WordCounter-v#{version}.zip"
  appcast "https://update.christiantietze.de/wordcounter/v#{version.major}/beta.xml",
          :sha256 => '4accc4dc07290f0970781b86baa4bd15500d8a39be2e1bdbd5a97d52d71897f5'
  name 'WordCounter'
  homepage 'http://wordcounterapp.com/'
  license :commercial

  app 'WordCounter.app'
end
