cask 'tinderbox' do
  if MacOS.version <= :lion
    version '5.12.2'
    sha256 '56d47d8898ea8c2eaafe053b7adae9500820011d525e31b0c772ebf89f46b7c7'
    app 'Tinderbox.app'
  elsif MacOS.version <= :mavericks
    version '6.4.0'
    sha256 '765a6245d25f9c2185802f36caa1f620f276637b884260fffa74bf639670e211'
    app 'TinderboxSix.app'
  else
    version '7.0.3'
    sha256 'cda855a774595f75c0ae15879532c2d7e070abb7a291f2b9ae3e6d80c02c4eb6'
    app "Tinderbox #{version.major}.app"
  end

  url "http://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  name 'Tinderbox'
  homepage 'http://eastgate.com/Tinderbox/'
end
