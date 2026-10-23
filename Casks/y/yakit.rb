cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.9-1023"
  sha256 arm:   "bfc257b7abc25f8f71176f099f37e640125e7738a2a19fb8f4c047de9c0fa2bc",
         intel: "bc16b108a8b99395acd729b4bf8a1f84176d6bb928058248f86236836be00ab9"

  url "https://github.com/yaklang/yakit/releases/download/v#{version}/Yakit-#{version}-darwin-#{arch}.dmg"
  name "Yakit"
  desc "Cybersecurity platform"
  homepage "https://github.com/yaklang/yakit"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/)
  end

  depends_on :macos

  app "Yakit.app"

  uninstall quit: "io.yaklang.yakit"

  zap trash: [
    "~/.yakit",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.yaklang.yakit.sfl*",
    "~/Library/Application Support/yakit",
    "~/Library/Preferences/io.yaklang.yakit.plist",
    "~/Library/Saved Application State/io.yaklang.yakit.savedState",
  ]
end
