cask 'wordcounter' do
  version '1.3.5'
  sha256 '01ef9d7e8edf73d1279e124d6a62bdda4b86c166ccc279de8bac060c386ad3f5'

  # amazonaws.com/wordcounterapp was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/wordcounterapp/WordCounter-v#{version}.zip"
  appcast "https://update.christiantietze.de/wordcounter/v#{version.major}/beta.xml"
  name 'WordCounter'
  homepage 'https://wordcounterapp.com/'

  app 'WordCounter.app'
end
