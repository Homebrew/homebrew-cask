cask 'zcash4mac' do
  version '1.0.4-208'
  sha256 '31a9fc4270d04bbc7dbe330de1ba805cafe66fb9d47fb7b7c5921b3159b197d1'

  # zcash.dl.mercerweiss.com was verified as official when first introduced to the cask
  url "https://zcash.dl.mercerweiss.com/zcash4mac-#{version}.dmg"
  name 'zcash4mac'
  homepage 'https://zcash4mac.com/'

  app 'zcash4mac.app'
end
