cask "vlc" do
  arch = Hardware::CPU.intel? ? "intel64" : "arm64"

  version "3.0.16"

  if Hardware::CPU.intel?
    sha256 "cf559ed2aa7c47e536534a8b10867d7a32b37e76a6c2d2b94f998b77eb36f121"
  else
    sha256 "a765306f3d5cae095fa55d7ea36995e9c60939445b21a2ea44057b083da6c6e1"
  end

  url "https://download.videolan.org/vlc/#{version}/macosx/vlc-#{version}-#{arch}.dmg"
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
  # shim scripts (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscripts = {
    cvlc: "-I dummy",
    nvlc: "-I ncurses",
    vlc: "",
  }

  shimscripts.each_key do |shimscript|
    binary "#{staged_path}/#{shimscript}.wrapper.sh", target: shimscript.to_s
  end

  preflight do
    shimscripts.each do |shimscript, args|
      File.write "#{staged_path}/#{shimscript}.wrapper.sh", <<~EOS
        #!/bin/sh
        exec '#{appdir}/VLC.app/Contents/MacOS/VLC' #{args} "$@"
      EOS
    end
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
