cask 'teseve' do
  version '0.5.3'
  sha256 '6f6ae56e101c973d6662afab6d5fd707b03e8853ecb92a49c04b9d5b4ce40c2f'

  # github.com/teseve/teseve was verified as official when first introduced to the cask
  url "https://github.com/teseve/teseve/releases/download/#{version}/Teseve-#{version}-mac-x64.zip"
  appcast 'https://github.com/teseve/teseve/releases.atom'
  name 'Tèsèvè'
  homepage 'https://teseve.github.io/'

  auto_updates true

  app 'Teseve.app'

  zap trash: [
               '~/Library/Preferences/com.flatland.app.teseve.plist',
               '~/Library/Application Support/teseve',
             ]
end
