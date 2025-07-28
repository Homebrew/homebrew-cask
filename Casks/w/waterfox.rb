cask "waterfox" do
  version "6.5.11"
  sha256 "b4d46ac43f0a9eae8a1d70e48283eef8f4c9e36d5db97a00fedb26b3f8cbe5f5"

  url "https://cdn1.waterfox.net/waterfox/releases/#{version}/Darwin_x86_64-aarch64/Waterfox%20#{version}.dmg"
  name "Waterfox"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url "https://cdn1.waterfox.net/waterfox/releases/latest/macos"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
