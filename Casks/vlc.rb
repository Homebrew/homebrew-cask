cask 'vlc' do
  version '3.0.1'
  sha256 'ceea37fb888b810c1b11c558471f10fa35500c047d6eca5733f038eefb16d926'

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  appcast 'http://update.videolan.org/vlc/sparkle/vlc-intel64.xml',
          checkpoint: '49349f13ebd0902cad880eea377d125a2af6361808e82d11f9a0949a1d7fa12c'
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc/'
  gpg "#{url}.asc", key_id: '65f7c6b4206bd057a7eb73787180713be58d1adc'

  auto_updates true

  app 'VLC.app'
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/vlc.wrapper.sh"
  binary shimscript, target: 'vlc'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/VLC.app/Contents/MacOS/VLC' "$@"
    EOS
  end

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.videolan.vlc.sfl*',
               '~/Library/Application Support/org.videolan.vlc',
               '~/Library/Application Support/VLC',
               '~/Library/Preferences/org.videolan.vlc',
               '~/Library/Preferences/org.videolan.vlc.plist',
               '~/Library/Saved Application State/org.videolan.vlc.savedState',
               '~/Library/Caches/org.videolan.vlc',
             ]
end
