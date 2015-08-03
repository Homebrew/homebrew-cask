cask v1: 'wowdoge' do
  version :latest
  sha256 :no_check

  url 'http://www.wowdoge.org/download/WowDoge.dmg'
  name 'WowDoge'
  homepage 'http://www.wowdoge.org'
  license :mit

  app 'WowDoge.app'
end
