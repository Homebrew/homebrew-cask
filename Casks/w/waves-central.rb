cask "waves-central" do
  version "15.5.5"
  sha256 :no_check

  url "https://cf-installers.waves.com/WavesCentral/Install_Waves_Central.dmg"
  name "Waves Central"
  desc "Client to install and activate Waves products"
  homepage "https://www.waves.com/"

  livecheck do
    url "https://register.waves.com/Autoupdate/Updates/ByProductId/1/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Waves Central.app"

  zap trash: [
    "~/Library/Application Support/Waves Audio",
    "~/Library/Application Support/Waves Central",
    "~/Library/Preferences/com.WavesAudio.central.plist",
    "~/Library/Saved Application State/com.WavesAudio.central.savedState",
  ]
end
