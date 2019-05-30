cask 'tinderbox' do
  if MacOS.version <= :mavericks
    version '6.4.0'
    sha256 '765a6245d25f9c2185802f36caa1f620f276637b884260fffa74bf639670e211'
    app 'TinderboxSix.app'
  else
    version '8.0.2'
    sha256 '44cc0ae9e94bef7cd3f87d89403e75ece66b30765f6afd8b6db4ca8039493485'
    app "Tinderbox #{version.major}.app"
  end

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  appcast 'https://eastgate.com/Tinderbox/download.html'
  name 'Tinderbox'
  homepage 'https://eastgate.com/Tinderbox/'
end
