cask 'yojimbo' do
  version '4.1.3'
  sha256 '6bc8f4dd2095c6e9f7a6315cfa092da8e1f9b51b1ad46fda8a5c5d4ec5b1de86'

  # s3.amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/Yojimbo.xml'
  name 'Yojimbo'
  homepage 'https://www.barebones.com/products/yojimbo/'

  app 'Yojimbo.app'
end
