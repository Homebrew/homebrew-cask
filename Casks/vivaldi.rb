cask 'vivaldi' do
  version '1.0.435.42'
  sha256 'd8b3149b77bc7ea1c8d9192de7fdec101eaa1b92ae0104bf86c62c9f22f0dde0'

  url "https://download.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'

  zap delete: [
                '~/Library/Preferences/com.vivaldi.Vivaldi.plist',
                '~/Library/Application Support/Vivaldi',
                '~/Library/Caches/Vivaldi',
                '~/Library/Caches/com.vivaldi.Vivaldi',
                '~/Library/Saved Application State/com.vivaldi.Vivaldi.savedState',
              ]
end
