cask 'warsow' do
  version '2.1.2'
  sha256 '176b037186e4d8a1c0fc740fe8660cd960339fc4eeca5e5eaaec4028b9bd6aba'

  # sebastian.network/warsow was verified as official when first introduced to the cask
  url "http://sebastian.network/warsow/warsow-#{version}.dmg"
  name 'Warsow'
  homepage 'https://www.warsow.net/'

  app 'Warsow.app'
end
