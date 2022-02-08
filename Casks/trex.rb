cask "trex" do
  version "1.5.1"
  sha256 "92756dc4c7eefaa06614d03ec86d3dc4330a0d917fe2bf52e5a730a132bb85da"

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
