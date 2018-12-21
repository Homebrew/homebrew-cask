cask 'tusk' do
  version '0.14.0'
  sha256 '62a053f26e7abbe3716d8a2a3f352698a848a31abd82a8af46d888585bb9968e'

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
