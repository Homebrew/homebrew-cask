cask "waterfox" do
  version "6.6.5.1"
  sha256 "1e782b603c17470a3bbb86a3006a7683b0ab81199cfd04fe1fc1f5b8d2ff5750"

  url "https://cdn1.waterfox.net/waterfox/releases/#{version}/Darwin_x86_64-aarch64/Waterfox%20#{version}.dmg"
  name "Waterfox"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url "https://cdn1.waterfox.net/waterfox/releases/latest/macos"
    strategy :header_match
  end

  auto_updates true

  app "Waterfox.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/waterfox.wrapper.sh"
  binary shimscript, target: "waterfox"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Waterfox.app/Contents/MacOS/waterfox' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
