cask 'vivaldi' do
  version '1.0.435.40'
  sha256 '5231887cdcd72741c2b4eacabca4f373e64065c251f72eee670b7adc6bab43cc'

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
