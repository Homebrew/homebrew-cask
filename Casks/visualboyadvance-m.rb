cask 'visualboyadvance-m' do
  version '2.0.2'
  sha256 '29e7ce42d69f1916fbb158079fab01e7ab43836e1ff4ce43a3c2800cbd248250'

  # github.com/visualboyadvance-m/visualboyadvance-m was verified as official when first introduced to the cask
  url "https://github.com/visualboyadvance-m/visualboyadvance-m/releases/download/v#{version}/visualboyadvance-m-Mac.zip"
  appcast 'https://github.com/visualboyadvance-m/visualboyadvance-m/releases.atom'
  name 'Visual Boy Advance - M'
  homepage 'http://vba-m.com/'

  app 'visualboyadvance-m.app'

  zap trash: [
               '~/Library/Application Support/visualboyadvance-m',
               '~/Library/Preferences/visualboyadvance-m.plist',
             ]
end
