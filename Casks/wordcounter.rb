cask 'wordcounter' do
  version '1.4.1'
  sha256 'f4b6a7b0134af96bbbaa7a7a4f0c21d9736b3a3b75f664984d55b2d576d3428b'

  # update.christiantietze.de/wordcounter was verified as official when first introduced to the cask
  url "https://update.christiantietze.de/wordcounter/v#{version.major}/WordCounter-v#{version}.zip"
  appcast "https://update.christiantietze.de/wordcounter/v#{version.major}/beta.xml"
  name 'WordCounter'
  homepage 'https://wordcounterapp.com/'

  depends_on macos: '>= :sierra'

  app 'WordCounter.app'
end
