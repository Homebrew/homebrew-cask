cask "valentina-studio" do
  version "13.5.1"
  sha256 "9c0ee7ca2d07c4549e439e02e173ce6b5a49a6de04d442a8755cf0aac3c81834"

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
