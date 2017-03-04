cask 'teseve' do
  version '0.5.3'
  sha256 '6f6ae56e101c973d6662afab6d5fd707b03e8853ecb92a49c04b9d5b4ce40c2f'

  # github.com/teseve/teseve was verified as official when first introduced to the cask
  url "https://github.com/teseve/teseve/releases/download/#{version}/Teseve-#{version}-mac-x64.zip"
  appcast 'https://github.com/teseve/teseve/releases.atom',
          checkpoint: '23472e9f0783ef2271a383cb743e7af2d5253225510c84d83a8408bbb25ccf42'
  name 'Tèsèvè'
  homepage 'https://teseve.github.io/'

  auto_updates true

  app 'Teseve.app'

  zap delete: [
                '~/Library/Preferences/com.flatland.app.teseve.plist',
                '~/Library/Application Support/teseve',
              ]
end
