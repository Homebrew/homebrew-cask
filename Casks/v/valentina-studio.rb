cask "valentina-studio" do
  version "14.7.1"
  sha256 "c8d19f39ed70db3902ac60a6f51caa0a6f721567dc30855d6827abd54e2999f8"

  url "https://valentina-db.com/download/prev_releases/#{version}/mac_64/vstudio_x64_#{version.major}_mac.dmg"
  name "Valentina Studio"
  desc "Visual editors for data"
  homepage "https://valentina-db.com/en/valentina-studio-overview"

  livecheck do
    url "https://valentina-db.com/en/all-downloads/vstudio"
    regex(%r{href=['"]?/en/all-downloads/vstudio/current['"]?>\s*(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: ">= :mojave"

  app "Valentina Studio.app"

  zap trash: [
    "~/Library/Logs/Valentina Studio",
    "~/Library/Preferences/com.paradigma-software-inc.Valentina Studio_ling.plist",
    "~/Library/Preferences/com.paradigmasoft.VStudio",
    "~/Library/Preferences/com.paradigmasoft.vstudio.plist",
    "~/Library/Saved Application State/com.paradigmasoft.vstudio.savedState",
  ]
end
