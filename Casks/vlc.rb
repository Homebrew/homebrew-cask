cask 'vlc' do
  version '2.2.2'
  sha256 '0a68188a9d193a4d4614d28366a052355289a064571b79d0890e045caba5384a'

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  appcast 'http://update.videolan.org/vlc/sparkle/vlc-intel64.xml',
          checkpoint: '473cf8f5c4d23aec6524e2d50b4b2e4ab736db718bb350f4decbf6dd969e2741'
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc/'
  license :oss
  gpg "#{url}.asc",
      key_id: '65f7c6b4206bd057a7eb73787180713be58d1adc'

  app 'VLC.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.videolan.vlc.sfl',
                '~/Library/Application Support/org.videolan.vlc',
                '~/Library/Preferences/org.videolan.vlc',
                '~/Library/Preferences/org.videolan.vlc.plist',
                '~/Library/Saved Application State/org.videolan.vlc.savedState',
              ]
end
