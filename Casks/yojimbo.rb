cask 'yojimbo' do
  version '4.1.2'
  sha256 '33e087692c7fee4cb01c0014f6d5cca674060a1303f59f2294d9e9a43f220819'

  # amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/Yojimbo.xml'
  name 'Yojimbo'
  homepage 'https://www.barebones.com/products/yojimbo/'

  app 'Yojimbo.app'
end
