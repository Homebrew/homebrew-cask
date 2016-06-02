cask 'teseve' do
  version '0.5.1'
  sha256 'a0a2b66fbbc8dc12ac6883ca922778d83d51ed4b840f5d0c85a9a537ff623e17'

  # github.com/teseve/teseve was verified as official when first introduced to the cask
  url "https://github.com/teseve/teseve/releases/download/#{version}/Teseve-#{version}-mac-x64.zip"
  appcast 'https://github.com/teseve/teseve/releases.atom',
          checkpoint: '7e39590bee705f4e2109755c1d6a026c340310f3644d968aefbc5e40fd4e2ce4'
  name 'Tèsèvè'
  homepage 'http://teseve.github.io/'
  license :public_domain

  auto_updates true

  app 'Teseve.app'

  zap delete: [
                '~/Library/Preferences/com.flatland.app.teseve.plist',
                '~/Library/Application Support/teseve',
              ]
end
