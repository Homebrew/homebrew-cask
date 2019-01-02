cask 'vlc' do
  version '3.0.5'
  sha256 'fbbe2b2384caaa68d578d83a7496e80b65397510e9cec037e8e3ec7ef2fbc2ef'

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  appcast 'https://update.videolan.org/vlc/sparkle/vlc-intel64.xml'
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc/'

  auto_updates true
  conflicts_with cask: 'vlc-nightly'
  depends_on macos: '>= :lion'

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
