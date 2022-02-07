cask "trex" do
  version "1.5.0"
  sha256 "035ffda6acc996002518f9731bb566fe3de6fb840ba0cd9a7b6722f3a9f608c2"

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
