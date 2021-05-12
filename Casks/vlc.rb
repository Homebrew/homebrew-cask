cask "vlc" do
  version "3.0.14"

  if Hardware::CPU.intel?
    sha256 "a5628b5f7e69ce18dd13ca724f67c7c4381c0ed22862fcb2064d00227f42f42f"

    url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}-intel64.dmg"

  else
    sha256 "8d0b897ba5a9366f1482d84fea4e67eec42c47711df18f80ae596872ac881365"

    url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}-arm64.dmg"

  end

  name "VLC media player"
  desc "Multimedia player"
  homepage "https://www.videolan.org/vlc/"

  livecheck do
    url "https://update.videolan.org/vlc/sparkle/vlc-intel64.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/vlc-nightly"

  app "VLC.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/vlc.wrapper.sh"
  binary shimscript, target: "vlc"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/VLC.app/Contents/MacOS/VLC' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.videolan.vlc.sfl*",
    "~/Library/Application Support/org.videolan.vlc",
    "~/Library/Application Support/VLC",
    "~/Library/Caches/org.videolan.vlc",
    "~/Library/Preferences/org.videolan.vlc",
    "~/Library/Preferences/org.videolan.vlc.plist",
    "~/Library/Saved Application State/org.videolan.vlc.savedState",
  ]
end
