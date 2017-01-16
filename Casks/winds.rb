cask 'winds' do
  version '0.3.0'
  sha256 'f3d97376a9f060c6d4c1b3f32383332cfa4a96c294aed760306111759adc292b'

  # github.com/GetStream/Winds was verified as official when first introduced to the cask
  url "https://github.com/GetStream/Winds/releases/download/v#{version}/Winds.zip"
  appcast 'https://github.com/GetStream/Winds/releases.atom',
          checkpoint: '0bbe523d705c737a8fd063038d2fc299af8717a449c6b57fb644185824da2060'
  name 'Winds'
  homepage 'https://winds.getstream.io/'

  app 'Winds.app'
end
