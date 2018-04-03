cask 'visualboyadvance-m' do
  version '2.0.2'
  sha256 '29e7ce42d69f1916fbb158079fab01e7ab43836e1ff4ce43a3c2800cbd248250'

  # github.com/visualboyadvance-m/visualboyadvance-m was verified as official when first introduced to the cask
  url "https://github.com/visualboyadvance-m/visualboyadvance-m/releases/download/v#{version}/visualboyadvance-m-Mac.zip"
  appcast 'https://github.com/visualboyadvance-m/visualboyadvance-m/releases.atom',
          checkpoint: '2a176560f40052fd7a6af786b02cb910495a29d8ad29710133d8e6a2dc5e25d4'
  name 'Visual Boy Advance - M'
  homepage 'http://vba-m.com/'

  app 'visualboyadvance-m.app'

  zap trash: [
               '~/Library/Application Support/visualboyadvance-m',
               '~/Library/Preferences/visualboyadvance-m.plist',
             ]
end
