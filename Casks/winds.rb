cask 'winds' do
  version '0.3.0'
  sha256 'f3d97376a9f060c6d4c1b3f32383332cfa4a96c294aed760306111759adc292b'

  # github.com was verified as official when first introduced to the cask
  url 'https://github.com/GetStream/Winds/releases/download/v#{version}/Winds.zip'
  name 'Winds'
  homepage 'https://winds.getstream.io'

  app 'Winds.app'
end
