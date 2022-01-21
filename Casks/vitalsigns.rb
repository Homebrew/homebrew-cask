cask "vitalsigns" do
  version "3.0.13,1"
  sha256 :no_check

  url "https://www.disometrics.com/downloads/VitalSigns#{version.major}/VitalSigns.dmg"
  name "Vitalsigns"
  desc "Temperature and memory monitor"
  homepage "https://www.disometrics.com/vitalsigns/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "VitalSigns.app"

  zap trash: [
    "~/Library/Caches/com.creationalstate.VitalSigns",
    "~/Library/HTTPStorages/com.creationalstate.VitalSigns",
    "~/Library/LaunchAgents/com.disometric.vitalsigns.launcher.plist",
    "~/Library/Preferences/com.creationalstate.VitalSigns.plist",
    "~/Library/Preferences/com.disometric.vitalsigns.plist",
  ]
end
