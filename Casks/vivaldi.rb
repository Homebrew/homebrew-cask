cask 'vivaldi' do
  version '1.15.1147.36'
  sha256 '7385d088b012fe319bf3aa4a25d0822b29845705f153b851f269b5c98ef582fe'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/public/mac/appcast.xml',
          checkpoint: 'dd6aa818d8ce85e668b79425c43769b145582bf48ee0239044404c70dcddeaa5'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'

  zap trash: [
               '~/Library/Application Support/Vivaldi',
               '~/Library/Caches/Vivaldi',
               '~/Library/Caches/com.vivaldi.Vivaldi',
               '~/Library/Preferences/com.vivaldi.Vivaldi.plist',
               '~/Library/Saved Application State/com.vivaldi.Vivaldi.savedState',
             ]
end
