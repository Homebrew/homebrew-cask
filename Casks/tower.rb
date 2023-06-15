cask "tower" do
  version "9.4,356,9e6cb891"
  sha256 "c0b696390b9806ac25e92f3d8d357ecf97b0b09101cfbc1cee98122975e6bb6c"

  url "https://www.git-tower.com/apps/tower3-mac/#{version.csv.second}-#{version.csv.third}/Tower-#{version.csv.first}-#{version.csv.second}.zip"
  name "Tower"
  desc "Git client focusing on power and productivity"
  homepage "https://www.git-tower.com/"

  livecheck do
    url "https://www.git-tower.com/updates/tower3-mac/stable/releases/latest/download"
    regex(%r{(\d+(?:\.\d+)*)-([a-z0-9]+)/Tower-(\d+(?:\.\d+)+)-(\d+(?:\.\d+)*)\.zip}i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true

  app "Tower.app"
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.fournova.tower*.sfl2",
    "~/Library/Application Support/com.fournova.Tower*",
    "~/Library/Caches/com.fournova.Tower*",
    "~/Library/Preferences/com.fournova.Tower*.plist",
  ]
end
