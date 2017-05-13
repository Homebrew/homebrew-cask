cask 'vlc' do
  version '2.2.5.1'
  sha256 '7e31cf16b944ef84d7cbf40b23cafa6f7dc53c2163b2e46bda5e518c46880bdf'

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  appcast 'http://update.videolan.org/vlc/sparkle/vlc-intel64.xml',
          checkpoint: '0e71dfa9874979a8a9e6a9a3a7fdd21366a92082bce2836cbd938186ad5945fa'
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc/'
  gpg "#{url}.asc", key_id: '65f7c6b4206bd057a7eb73787180713be58d1adc'

  auto_updates true

  app 'VLC.app'
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/vlc.wrapper.sh"
  binary shimscript, target: 'vlc'

  preflight do
    IO.write shimscript, <<-EOS.undent
      #!/bin/sh
      '#{appdir}/VLC.app/Contents/MacOS/VLC' "$@"
    EOS
  end

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.videolan.vlc.sfl',
                '~/Library/Application Support/org.videolan.vlc',
                '~/Library/Application Support/VLC',
                '~/Library/Preferences/org.videolan.vlc',
                '~/Library/Preferences/org.videolan.vlc.plist',
                '~/Library/Saved Application State/org.videolan.vlc.savedState',
                '~/Library/Caches/org.videolan.vlc',
              ]
end
