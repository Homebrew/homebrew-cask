cask "tabtopus" do
  version "4.2.5,4250"
  sha256 "0e23b5a33821ac1c72e5cd4b8b979144e48754f3c3d222b81f458ebd139fe01a"

  url "https://www.mariogt.com/appsChest/TabTopus#{version.csv.first.dots_to_hyphens}.zip"
  name "TabTopus"
  desc "Web browser tabs URL exporter"
  homepage "https://www.mariogt.com/tabtopus.html"

  livecheck do
    url "https://www.mariogt.com/appsChest/tabtopusAppCast.xml"
    strategy :sparkle
  end

  app "TabTopus.app"

  zap trash: "~/Library/Preferences/com.mariogt.tabtopus.plist"
end
