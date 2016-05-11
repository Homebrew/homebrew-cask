cask 'vlc' do
  version '2.2.3'
  sha256 'c64e42f64674f1455d29c726b646991410c883fefadaf6884ea8c2caf02899c9'

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  appcast 'http://update.videolan.org/vlc/sparkle/vlc-intel64.xml',
          checkpoint: '01543595515ba6449e20124ddf92dec314d5ef60a246af8d9460de01a0977b31'
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc/'
  license :oss
  gpg "#{url}.asc",
      key_id: '65f7c6b4206bd057a7eb73787180713be58d1adc'

  app 'VLC.app'
  shimscript = "#{staged_path}/vlcwrapper"
  binary shimscript, target: 'vlc'

  preflight do
    File.open(shimscript, 'w') do |f|
      f.puts '#! /bin/bash'
      f.puts "#{staged_path}/VLC.app/Contents/MacOS/VLC \"$@\""
      FileUtils.chmod '+x', f
    end
  end

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.videolan.vlc.sfl',
                '~/Library/Application Support/org.videolan.vlc',
                '~/Library/Preferences/org.videolan.vlc',
                '~/Library/Preferences/org.videolan.vlc.plist',
                '~/Library/Saved Application State/org.videolan.vlc.savedState',
              ]
end
