cask 'waterfox' do
  version '50.0.2'
  sha256 'c7c70d211fd53425d981a4bb88364f1651edcc18b59f17ca41bbf26150266a1b'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'
end
