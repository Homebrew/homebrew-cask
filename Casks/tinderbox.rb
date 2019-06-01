cask 'tinderbox' do
  if MacOS.version <= :mavericks
    version '6.4.0'
    sha256 '765a6245d25f9c2185802f36caa1f620f276637b884260fffa74bf639670e211'
    app 'TinderboxSix.app'
  else
    version '8.0.3'
    sha256 'd476dfbd8974ae80a1d510a837321682ba2cb3155ced718cb49a64f8755064d0'
    app "Tinderbox #{version.major}.app"
  end

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  appcast 'https://eastgate.com/Tinderbox/download.html'
  name 'Tinderbox'
  homepage 'https://eastgate.com/Tinderbox/'
end
