cask "zo" do
  version "1.5.16"
  sha256 "00994ec54ae48d99a802f874a3440bf50fd24b04602d0f8050dd22f88286b57c"

  url "https://github.com/zocomputer/Zo/releases/download/v#{version}/Zo-#{version}-universal-mac.zip"
  name "Zo"
  desc "Friendly personal server"
  homepage "https://www.zo.computer/"

  auto_updates true
  depends_on macos: :monterey

  app "Zo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/computer.zo.desktop.sfl*",
    "~/Library/Application Support/Zo",
    "~/Library/Preferences/computer.zo.desktop.plist",
  ]
end
