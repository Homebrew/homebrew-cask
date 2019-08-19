cask 'vlc' do
  version '3.0.7.1'
  sha256 '127607d050a32a4daedc048c833d8fc1adb9141f166b7b257401057705a842be'

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  appcast 'https://download.videolan.org/pub/videolan/vlc/'
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc'

  auto_updates true
  conflicts_with cask: 'vlc-nightly'

  app 'VLC.app'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/vlc.wrapper.sh"
  binary shimscript, target: 'vlc'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/VLC.app/Contents/MacOS/VLC' "$@"
    EOS
  end

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.videolan.vlc.sfl*',
               '~/Library/Application Support/org.videolan.vlc',
               '~/Library/Application Support/VLC',
               '~/Library/Caches/org.videolan.vlc',
               '~/Library/Preferences/org.videolan.vlc',
               '~/Library/Preferences/org.videolan.vlc.plist',
               '~/Library/Saved Application State/org.videolan.vlc.savedState',
             ]
end
