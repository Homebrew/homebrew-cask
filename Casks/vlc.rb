cask "vlc" do
  arch arm: "arm64", intel: "intel64"

  version "3.0.18"
  sha256 arm:   "99c259bdbc5221fd50817f518b70e9bf9ee175e890743903c9807bc778668f47",
         intel: "88edcdfceb3bd2f680367d9009d38a0c147fa758f2dd395e43412c1e08ce1ccb"

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}-#{arch}.dmg"
  name "VLC media player"
  desc "Multimedia player"
  homepage "https://www.videolan.org/vlc/"

  livecheck do
    url "https://www.videolan.org/vlc/download-macosx.html"
    regex(%r{href=.*?/vlc[._-]v?(\d+(?:\.\d+)+)(?:[._-][a-z]\w*)?\.dmg}i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/vlc-nightly"

  app "VLC.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/vlc.wrapper.sh"
  binary shimscript, target: "vlc"

  preflight do
    File.write shimscript, <<~EOS
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
