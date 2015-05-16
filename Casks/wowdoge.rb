cask :v1 => 'wowdoge' do
  version :latest
  sha256 :no_check

  url 'http://www.wowdoge.org/download/WowDoge.dmg'
  name 'WowDoge'
  homepage 'http://www.wowdoge.org'
  license :mit    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'WowDoge.app'
end
