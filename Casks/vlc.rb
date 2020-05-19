cask 'vlc' do
  version '3.0.10'
  sha256 'ced90e1175c8dad83c8ff9172c19f52a2aea3e63b7ab752d4b412764e085c8ad'

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  appcast 'https://www.videolan.org/vlc/download-macosx.html'
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc/'

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
