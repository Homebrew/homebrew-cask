cask "yakyak" do
  arch arm: "arm64", intel: "x64"

  version "1.5.11.5"
  sha256 arm:   "bf19139837c123c814f6ccde0049e90893249ef48ee00b8a6f77666732679f27",
         intel: "a0f37f802b591f3f856c729a3db1537ecbbff37ec7eaa732bce09244ae824de0"

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx-#{arch}.zip"
  name "Yakyak"
  desc "Desktop chat client for Google Hangouts"
  homepage "https://github.com/yakyak/yakyak"

  disable! date: "2024-06-27", because: :unmaintained

  app "YakYak-darwin-#{arch}/YakYak.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.yakyak.sfl*",
    "~/Library/Application Support/yakyak",
    "~/Library/Preferences/com.github.yakyak.plist",
  ]
end
