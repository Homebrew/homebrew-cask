cask 'vivaldi' do
  version '1.14.1077.45'
  sha256 '595e8d160a698dbe151fcc8671a527ee6bd81ae83b03b7c3bf4bcedd8944cf8e'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/public/mac/appcast.xml',
          checkpoint: '1e0cf4d178e8b73fa920633bae80ecc799f9d7cbfff3262d112eb35a8b94ea8e'
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
