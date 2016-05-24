cask 'vivaldi' do
  version '1.1.453.59'
  sha256 'bf6baf4c3e9068e79a29413453f2d2ff48f0809e9874a7bbd647afbded92889f'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
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
