cask 'tinderbox' do
  if MacOS.version <= :mavericks
    version '6.4.0'
    sha256 '765a6245d25f9c2185802f36caa1f620f276637b884260fffa74bf639670e211'
    app 'TinderboxSix.app'
  else
    version '8.6.1'
    sha256 '5c2e69cc6fb2d68a9148336c1c1364921efc1bae68c8831ada7c14f244bd5867'
    app "Tinderbox #{version.major}.app"
  end

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  appcast 'https://eastgate.com/Tinderbox/download.html'
  name 'Tinderbox'
  homepage 'https://eastgate.com/Tinderbox/'
end
