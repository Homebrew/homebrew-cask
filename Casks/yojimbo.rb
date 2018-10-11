cask 'yojimbo' do
  version '4.1.2'
  sha256 '4c11c2c7cdb1ce513d58d6c1f0474541e7fa312cd07288eefad21024a134c9b6'

  # amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/Yojimbo.xml'
  name 'Yojimbo'
  homepage 'https://www.barebones.com/products/yojimbo/'

  app 'Yojimbo.app'
end
