cask 'vlc' do
  version '2.2.7'
  sha256 'd7bbf407e495595b1d8b7f54bf0b381f9db3499bccd928608cf59a5b9fc2e625'

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  appcast 'http://update.videolan.org/vlc/sparkle/vlc-intel64.xml',
          checkpoint: '2e8debe5851a85536ff4ef24cff5bbff2cbce7c17bc3902eeccbbf1636c4dc67'
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
