cask "vlc" do
  version "3.0.15"

  if Hardware::CPU.intel?
    sha256 "db79a59a2d8d17815ffb39cf4de813991fcc071b5b1c807431635e27586685d6"

    url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}-intel64.dmg"

  else
    sha256 "979b98eac548c922d77416a3afb1e7efa36f1aa01a063565dbe6e7c1f0ab3811"

    url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}-arm64.dmg"

  end

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
