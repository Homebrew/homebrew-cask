cask 'vivaldi' do
  version '1.9.818.49'
  sha256 '1a076f2937765d411455cdae7dfbb453693dee7dd220f7f53c3dae0f12d377f0'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '00bbbbcca01ecf1bf35819bb4fe78f7008c75e12061a4244d7c8a50f2cc298d3'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

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
