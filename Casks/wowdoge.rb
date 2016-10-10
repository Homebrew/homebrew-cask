cask 'wowdoge' do
  version :latest
  sha256 :no_check

  url 'http://www.wowdoge.org/download/WowDoge.dmg'
  name 'WowDoge'
  homepage 'http://www.wowdoge.org'

  app 'WowDoge.app'
end
