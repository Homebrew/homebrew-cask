cask :v1 => 'vivaldi' do
  version '1.0.303.52'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://vivaldi.com/download/Vivaldi_Beta.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'

  zap :delete => [
                  '~/Library/Preferences/com.vivaldi.Vivaldi.plist',
                  '~/Library/Application Support/Vivaldi',
                  '~/Library/Caches/Vivaldi',
                  '~/Library/Caches/com.vivaldi.Vivaldi',
                  '~/Library/Saved Application State/com.vivaldi.Vivaldi.savedState'
                 ]
end
