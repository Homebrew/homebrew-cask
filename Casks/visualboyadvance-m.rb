cask 'visualboyadvance-m' do
  version '2.0.1'
  sha256 '7179329ce23ed36d38505dd3871a67c1fccb0d7bec359f2afae0e10cf3d2498e'

  # github.com/visualboyadvance-m/visualboyadvance-m was verified as official when first introduced to the cask
  url "https://github.com/visualboyadvance-m/visualboyadvance-m/releases/download/v#{version}/visualboyadvance-m-Mac.zip"
  appcast 'https://github.com/visualboyadvance-m/visualboyadvance-m/releases.atom',
          checkpoint: '8ece7b3a2643a9af1d341a7e4c956df121ede68e5b73473679b5054aebd2912c'
  name 'Visual Boy Advance - M'
  homepage 'http://vba-m.com/'

  app 'visualboyadvance-m.app'

  zap trash: [
               '~/Library/Application Support/visualboyadvance-m',
               '~/Library/Preferences/visualboyadvance-m.plist',
             ]
end
