cask "vlc" do
  arch arm: "arm64", intel: "intel64"

  version "3.0.23"
  sha256 arm:   "fc6fac08d87f538517d44aca0c5e7a244b67c8c4cb589bf478363a7315fd5e0d",
         intel: "ec01530ce69d849dd057fba8876e68ac39bf279dc28de4e9c04e4aec11fc98db"

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}-#{arch}.dmg"
  name "VLC media player"
  desc "Multimedia player"
  homepage "https://www.videolan.org/vlc/"

  livecheck do
    url "https://www.videolan.org/vlc/download-macosx.html"
    regex(%r{href=.*?/vlc[._-]v?(\d+(?:\.\d+)+)(?:[._-][a-z]\w*)?\.dmg}i)
  end

  auto_updates true
  conflicts_with cask: "vlc@nightly"

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
    "~/Library/HTTPStorages/org.videolan.vlc",
    "~/Library/Preferences/org.videolan.vlc",
    "~/Library/Preferences/org.videolan.vlc.plist",
    "~/Library/Saved Application State/org.videolan.vlc.savedState",
  ]
end
