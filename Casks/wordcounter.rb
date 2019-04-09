cask 'wordcounter' do
  version '1.4.3'
  sha256 '4ee401160b28f5b7b39cb9e59bcf2b3fcf3b56b68ab7cced4093c5825864d406'

  # update.christiantietze.de/wordcounter was verified as official when first introduced to the cask
  url "https://update.christiantietze.de/wordcounter/v#{version.major}/WordCounter-v#{version}.zip"
  appcast "https://update.christiantietze.de/wordcounter/v#{version.major}/beta.xml"
  name 'WordCounter'
  homepage 'https://wordcounterapp.com/'

  depends_on macos: '>= :sierra'

  app 'WordCounter.app'
end
