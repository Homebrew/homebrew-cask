cask 'vivaldi' do
  version '1.5.658.44'
  sha256 'ed44c93ad141cd10416ccc9931bb6d6b67937383b4384da9bd8edbb70fd508bc'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '2fa69731030a1cce3f0000f17540865f3303502959e1cc526512874f35773230'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'

  auto_updates true

  app 'Vivaldi.app'

  zap delete: [
                '~/Library/Preferences/com.vivaldi.Vivaldi.plist',
                '~/Library/Application Support/Vivaldi',
                '~/Library/Caches/Vivaldi',
                '~/Library/Caches/com.vivaldi.Vivaldi',
                '~/Library/Saved Application State/com.vivaldi.Vivaldi.savedState',
              ]
end
