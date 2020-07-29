cask 'yojimbo' do
  version '4.5'
  sha256 '6b65cf378bfbe259e59b03d00c3a9211c765e7c094d9d90102d7a0373f994b76'

  # s3.amazonaws.com/BBSW-download/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/Yojimbo.xml'
  name 'Yojimbo'
  homepage 'https://www.barebones.com/products/yojimbo/'

  app 'Yojimbo.app'
end
