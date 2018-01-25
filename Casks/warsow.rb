cask 'warsow' do
  version '2.1'
  sha256 '347c47b029dc706ab43b754ec7422c3766dde2b2ed9a3ce0f40cd0d52c64f94d'

  # sebastian.network/warsow was verified as official when first introduced to the cask
  url "http://sebastian.network/warsow/warsow_#{version.no_dots}.dmg"
  name 'Warsow'
  homepage 'https://www.warsow.net/'

  app 'Warsow.app'
end
