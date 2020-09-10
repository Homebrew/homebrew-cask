cask "vlc" do
  version "3.0.11.1"
  sha256 "021212d2f6e6701ec3b254d56dfa5c5f848c9c02813c5750c6944a8458de8fb5"

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  appcast "https://www.videolan.org/vlc/download-macosx.html"
  name "VLC media player"
  desc "Open-source cross-platform multimedia player"
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
