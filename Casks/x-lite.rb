cask 'x-lite' do
  version '5.0.2_87464'
  sha256 '10c7bc808104e3a623cfc62a78e06e551a7505312504804c455817485395869f'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'http://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
