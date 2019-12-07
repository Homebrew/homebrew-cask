cask 'tinderbox' do
  if MacOS.version <= :mavericks
    version '6.4.0'
    sha256 '765a6245d25f9c2185802f36caa1f620f276637b884260fffa74bf639670e211'
    app 'TinderboxSix.app'
  else
    version '8.2.1'
    sha256 '0ff00493d0e8058e7a0cb78ab446c63dcfef13bddc7d92162c70341560158edd'
    app "Tinderbox #{version.major}.app"
  end

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  appcast 'https://eastgate.com/Tinderbox/download.html'
  name 'Tinderbox'
  homepage 'https://eastgate.com/Tinderbox/'
end
