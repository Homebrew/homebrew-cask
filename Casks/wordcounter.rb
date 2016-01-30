cask 'wordcounter' do
  version '1.3.4'
  sha256 '56c2c0f05869d2a64b1c93a422c6304b01fb7fd9e6941d88f5e86dd2f27afd6d'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/wordcounterapp/WordCounter-v#{version}.zip"
  appcast "https://update.christiantietze.de/wordcounter/v#{version.major}/beta.xml",
          checkpoint: 'aad4e02f1e678c7504fe54f52e63e2d78fc4b000a99b05bdf848f14d7ff4abfa'
  name 'WordCounter'
  homepage 'http://wordcounterapp.com/'
  license :commercial

  app 'WordCounter.app'
end
