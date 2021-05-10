cask "vitalsigns" do
  version "3.0.10"
  sha256 :no_check

  url "https://www.disometric.com/downloads/VitalSigns#{version.major}/VitalSigns.dmg"
  name "Vitalsigns"
  desc "Temperature and memory monitor"
  homepage "https://www.disometric.com/vitalsigns/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "VitalSigns.app"

  zap trash: [
    "~/Library/LaunchAgents/com.disometric.vitalsigns.launcher.plist",
    "~/Library/Preferences/com.creationalstate.VitalSigns.plist",
    "~/Library/Preferences/com.disometric.vitalsigns.plist",
  ]
end
