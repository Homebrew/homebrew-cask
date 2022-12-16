cask "trex" do
  version "1.6.0"
  sha256 "c34d77dbdd6561a4f3eb7650166be625831c2526823ee430e120402909dec023"

  url "https://github.com/amebalabs/TRex/releases/download/v#{version}/TRex.zip",
      verified: "github.com/amebalabs/TRex/"
  name "TRex"
  desc "Easy to use text extraction tool"
  homepage "https://trex.ameba.co/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "TRex.app"

  zap trash: [
    "~/Library/Application Scripts/com.ameba.TRex-LaunchAtLoginHelper",
    "~/Library/Caches/com.ameba.TRex",
    "~/Library/Containers/com.ameba.TRex-LaunchAtLoginHelper",
    "~/Library/Preferences/com.ameba.TRex.plist",
  ]
end
