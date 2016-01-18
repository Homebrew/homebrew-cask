cask 'wordcounter' do
  version '1.3.3'
  sha256 '68219430aef534160b3c9264778bcac04c78a6ffe3c30c06a1f0ebfe622d034a'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/wordcounterapp/WordCounter-v#{version}.zip"
  appcast "https://update.christiantietze.de/wordcounter/v#{version.major}/beta.xml",
          checkpoint: 'f6ba849eb9c49fc6a9e45f81abc9c0efa6a6fbfbea03fc08aae8c0306899bf70'
  name 'WordCounter'
  homepage 'http://wordcounterapp.com/'
  license :commercial

  app 'WordCounter.app'
end
