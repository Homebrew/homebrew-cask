cask 'visualboyadvance-m' do
  version '2.1.3'
  sha256 'dbaecf3c0688432e4b26b68417cce3a87ccbfe83a279e89dc26b967c4ff9d07d'

  # github.com/visualboyadvance-m/visualboyadvance-m was verified as official when first introduced to the cask
  url "https://github.com/visualboyadvance-m/visualboyadvance-m/releases/download/v#{version}/visualboyadvance-m-Mac-64bit.zip"
  appcast 'https://github.com/visualboyadvance-m/visualboyadvance-m/releases.atom'
  name 'Visual Boy Advance - M'
  homepage 'https://vba-m.com/'

  app 'visualboyadvance-m.app'

  zap trash: [
               '~/Library/Application Support/visualboyadvance-m',
               '~/Library/Preferences/visualboyadvance-m.plist',
             ]
end
