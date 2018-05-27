cask 'tyke' do
  version :latest
  sha256 :no_check

  url 'http://tyke.app/tyke.dmg'
  name 'Tyke'
  homepage 'http://tyke.app/'

  app 'tyke.app'

  uninstall quit: 'org.torrez.tyke'

  zap trash: '~/Library/Preferences/org.torrez.tyke.plist'
end
