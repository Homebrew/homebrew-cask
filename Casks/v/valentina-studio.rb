cask "valentina-studio" do
  version "13.3.3"
  sha256 "70e3b52caec41564f72c56231e466fb5e68753fb70e286fbb6eb9ed452687dc5"

  url "https://valentina-db.com/download/prev_releases/#{version}/mac_64/vstudio_x64_#{version.major}_mac.dmg"
  name "Valentina Studio"
  desc "Visual editors for data"
  homepage "https://valentina-db.com/en/valentina-studio-overview"

  livecheck do
    url "https://valentina-db.com/en/all-downloads/vstudio"
    regex(%r{href=['"]?/en/all-downloads/vstudio/current['"]?>\s*(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Valentina Studio.app"

  zap trash: [
    "~/Library/Logs/Valentina Studio",
    "~/Library/Preferences/com.paradigma-software-inc.Valentina Studio_ling.plist",
    "~/Library/Preferences/com.paradigmasoft.vstudio.plist",
    "~/Library/Preferences/com.paradigmasoft.VStudio",
    "~/Library/Saved Application State/com.paradigmasoft.vstudio.savedState",
  ]
end
