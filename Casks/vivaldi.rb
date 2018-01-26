cask 'vivaldi' do
  version '1.13.1008.44'
  sha256 '8e591985380dfb7f5ee76cb157d66fbf42fcbd313731e7cc62194a3375af2628'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/public/mac/appcast.xml',
          checkpoint: 'cf7fd02eab899cfe167a08fbc9a19f04e20fddfb0a9e37df4a59b0bd79044dad'
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
