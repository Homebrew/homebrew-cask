cask "valentina-studio" do
  version "14.1.3"
  sha256 "bcc40a8ea1e5d7700d15a4e6aad559746be8b23b00daa310bda9f9eaffcdfd4c"

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
    "~/Library/Preferences/com.paradigmasoft.VStudio",
    "~/Library/Preferences/com.paradigmasoft.vstudio.plist",
    "~/Library/Saved Application State/com.paradigmasoft.vstudio.savedState",
  ]
end
