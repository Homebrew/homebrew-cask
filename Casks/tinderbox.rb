cask 'tinderbox' do
  version '7.5.6'
  sha256 'b057489d884f0dd7ff2ea09904ecb1964fd317d53f88935cbac79b017f3e2223'

  app "Tinderbox #{version.major}.app"

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  name 'Tinderbox'
  homepage 'https://eastgate.com/Tinderbox/'
end
