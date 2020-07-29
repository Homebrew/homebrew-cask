cask 'tinderbox' do
  version '8.7.1'
  sha256 '6af09200b3b4a95100f43af72d5b838667666c24e7c67c79a29f25527bdf9168'

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  appcast 'https://eastgate.com/Tinderbox/download.html'
  name 'Tinderbox'
  homepage 'https://eastgate.com/Tinderbox/'

  app "Tinderbox #{version.major}.app"
end
