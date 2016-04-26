cask 'vivaldi' do
  version '1.1.453.47'
  sha256 '6e493c34c87c326795f5b2c1a5a9c48fec72d36dbb35334ee7dd8d2ced737f76'

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
