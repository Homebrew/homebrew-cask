cask "vehla" do
  version "8.7"
  sha256 :no_check

  url "https://vehla.s3.us-east-2.amazonaws.com/Vehla.dmg"
  name "Vehla"
  desc "AI-powered productivity toolkit"
  homepage "https://vehla.app/"

  livecheck do
    url "https://vehla.s3.us-east-2.amazonaws.com/update.json"
    regex(/"version"\s*:\s*"v?(\d+(?:\.\d+)+)"/i)
    strategy :page_match
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Vehla.app"

  uninstall quit: "com.kc.ibuhs.Vehla"

  zap trash: [
    "~/Library/Application Support/Vehla",
    "~/Library/Caches/com.kc.ibuhs.Vehla",
    "~/Library/Preferences/com.kc.ibuhs.Vehla.plist",
    "~/Library/Saved Application State/com.kc.ibuhs.Vehla.savedState",
  ]
end
