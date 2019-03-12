cask 'tinderbox' do
  if MacOS.version <= :mavericks
    version '6.4.0'
    sha256 '765a6245d25f9c2185802f36caa1f620f276637b884260fffa74bf639670e211'
    app 'TinderboxSix.app'
  else
    version '7.5.6'
    sha256 'b057489d884f0dd7ff2ea09904ecb1964fd317d53f88935cbac79b017f3e2223'
    app "Tinderbox #{version.major}.app"
  end

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  name 'Tinderbox'
  homepage 'https://eastgate.com/Tinderbox/'
end
