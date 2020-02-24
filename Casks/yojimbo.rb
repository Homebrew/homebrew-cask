cask 'yojimbo' do
  version '4.1.4'
  sha256 '5662f4b131fbbbe1ff0f7b691014d19f190eb0b232930f1edea758465956c03a'

  # s3.amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/Yojimbo.xml'
  name 'Yojimbo'
  homepage 'https://www.barebones.com/products/yojimbo/'

  app 'Yojimbo.app'
end
