cask "tower" do
  version "7.0,290:51eb1327"
  sha256 "f8e3efa13e46a8397fbb21bc16e52778e4f95699a5cad4c0c1b25c8b88df545a"

  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower3-mac/#{version.after_comma.before_colon}-#{version.after_colon}/Tower-#{version.before_comma}-#{version.after_comma.before_colon}.zip",
      verified: "fournova-app-updates.s3.amazonaws.com/"
  name "Tower"
  desc "Git client focusing on power and productivity"
  homepage "https://www.git-tower.com/"

  livecheck do
    url "https://updates.fournova.com/tower3-mac/stable/releases/latest/download"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{(\d+(?:\.\d+)*)-([a-z0-9]+)/Tower-(\d+(?:\.\d+)*)-(\d+(?:\.\d+)*)\.zip}i)
      "#{match[3]},#{match[1]}:#{match[2]}"
    end
  end

  auto_updates true

  app "Tower.app"
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap trash: [
    "~/Library/Application Support/com.fournova.Tower*",
    "~/Library/Caches/com.fournova.Tower*",
    "~/Library/Preferences/com.fournova.Tower*.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.fournova.tower*.sfl2",
  ]
end
