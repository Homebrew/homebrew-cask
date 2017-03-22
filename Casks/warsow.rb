cask 'warsow' do
  version '2.1'
  sha256 '347c47b029dc706ab43b754ec7422c3766dde2b2ed9a3ce0f40cd0d52c64f94d'

  url "https://www.warsow.net/download?dl=warsow#{version.no_dots}mac"
  name 'Warsow'
  homepage 'https://www.warsow.net/'

  app 'Warsow.app'
end
