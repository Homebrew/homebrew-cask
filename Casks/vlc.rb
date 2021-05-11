cask "vlc" do
  if Hardware::CPU.intel?
    version "3.0.13"
    sha256 "46ff8614c9638768c3f7ffb5ebd6515a9014a6ea6d3066cdbc4825e554aee9bd"

    url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}-intel64.dmg"

    livecheck do
      url "https://update.videolan.org/vlc/sparkle/vlc-intel64.xml"
      strategy :sparkle
    end
  else
    version "3.0.13"
    sha256 "0f7034b12dc855d70dead31bf4937d7cc16478c61627ac250c8349285fdfe4de"

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
