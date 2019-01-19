cask 'tusk' do
  version '0.20.0'
  sha256 '560956fd89af5f738a1aee2193acb1f59904b2f3f32eb8e65ee0f500aa3e60c2'

  # github.com/klaussinani/tusk was verified as official when first introduced to the cask
  url "https://github.com/klaussinani/tusk/releases/download/v#{version}/Tusk-#{version}.dmg"
  appcast 'https://github.com/klaussinani/tusk/releases.atom'
  name 'Tusk'
  homepage 'https://klaussinani.github.io/tusk/'

  app 'Tusk.app'

  zap trash: [
               '~/.tusk.json',
               '~/Library/Application Support/Tusk',
               '~/Library/Preferences/com.electron.tusk.plist',
               '~/Library/Preferences/com.electron.tusk.helper.plist',
               '~/Library/Saved Application State/com.electron.tusk.savedState',
             ]
end
