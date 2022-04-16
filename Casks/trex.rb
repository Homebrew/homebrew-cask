cask "trex" do
  version "1.5.2"
  sha256 "b7c7c249c7ae6dd764ff3a9b58ad4e7c491efc505a09640aa8df3352120384a6"

  url "https://github.com/amebalabs/TRex/releases/download/v#{version}/TRex.zip",
      verified: "github.com/amebalabs/TRex/"
  name "TRex"
  desc "Easy to use text extraction tool"
  homepage "https://trex.ameba.co/"

  depends_on macos: ">= :big_sur"

  app "TRex.app"

  zap trash: [
    "~/Library/Application Scripts/com.ameba.TRex-LaunchAtLoginHelper",
    "~/Library/Caches/com.ameba.TRex",
    "~/Library/Containers/com.ameba.TRex-LaunchAtLoginHelper",
    "~/Library/Preferences/com.ameba.TRex.plist",
  ]
end
