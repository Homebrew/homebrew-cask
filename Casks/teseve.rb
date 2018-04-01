cask 'teseve' do
  version '0.5.3'
  sha256 '6f6ae56e101c973d6662afab6d5fd707b03e8853ecb92a49c04b9d5b4ce40c2f'

  # github.com/teseve/teseve was verified as official when first introduced to the cask
  url "https://github.com/teseve/teseve/releases/download/#{version}/Teseve-#{version}-mac-x64.zip"
  appcast 'https://github.com/teseve/teseve/releases.atom',
          checkpoint: 'c151560a87037018ac08afb4aa5d8a8a6c6a4abc013e2b4f5135fcd7ee980bbe'
  name 'Tèsèvè'
  homepage 'https://teseve.github.io/'

  auto_updates true

  app 'Teseve.app'

  zap trash: [
               '~/Library/Preferences/com.flatland.app.teseve.plist',
               '~/Library/Application Support/teseve',
             ]
end
