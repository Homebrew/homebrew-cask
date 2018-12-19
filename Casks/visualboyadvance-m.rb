cask 'visualboyadvance-m' do
  version '2.1.0'
  sha256 'ccbb87374dad140d5359758b2c064403e1ea0a3c171525a9df98a7bee9ee3168'

  # github.com/visualboyadvance-m/visualboyadvance-m was verified as official when first introduced to the cask
  url "https://github.com/visualboyadvance-m/visualboyadvance-m/releases/download/v#{version}/visualboyadvance-m-Mac.zip"
  appcast 'https://github.com/visualboyadvance-m/visualboyadvance-m/releases.atom'
  name 'Visual Boy Advance - M'
  homepage 'https://vba-m.com/'

  app 'visualboyadvance-m.app'

  zap trash: [
               '~/Library/Application Support/visualboyadvance-m',
               '~/Library/Preferences/visualboyadvance-m.plist',
             ]
end
