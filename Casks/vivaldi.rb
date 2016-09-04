cask 'vivaldi' do
  version '1.3.551.38'
  sha256 'c899ddcb208898628f869cfb3c13f9c325035a1f6a0e708043f327c2891636bc'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '880b87e28055884a05bd5813c9e2ab72d89b1c09d89ec8b5c7d03cb1fccac8ce'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

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
