cask 'yojimbo' do
  version '4.1.1'
  sha256 '401b36cb12910a61d53b86fef571dcd8794f3970808098e1f0849e7d8a47f8e0'

  # amazonaws.com/BBSW-download was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/Yojimbo.xml',
          checkpoint: '398e62e09442015812d175f1e06546fd6ad7c44cd7591d24b6c5e35fdfe67d2f'
  name 'Yojimbo'
  homepage 'https://www.barebones.com/products/yojimbo/'

  app 'Yojimbo.app'
end
