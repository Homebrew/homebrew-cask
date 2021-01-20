cask "vlc" do
  if Hardware::CPU.intel?
    version "3.0.12"
    sha256 "9b8b5a78ee0d7448e840680df34c1417f7c8c87161127c2d150794b2449be5d1"

    url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}-intel64.dmg"

    livecheck do
      url "https://update.videolan.org/vlc/sparkle/vlc-intel64.xml"
      strategy :sparkle
    end
  else
    version "3.0.12.1"
    sha256 "5a5572c3a0bcf5c7a286dee0fbc027899a916a1c3fea919492894ae714789efa"

    url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}-arm64.dmg"

    livecheck do
      url "https://update.videolan.org/vlc/sparkle/vlc-arm64.xml"
      strategy :sparkle
    end
  end

  name "VLC media player"
  desc "Multimedia player"
  homepage "https://www.videolan.org/vlc/"

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
