cask "tower" do
  version "6.5,279:36c8e109"
  sha256 "6af8be62843ddf3ebcb3b1dc709669fbedb09b0352767f90057c027453ab4430"

  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower3-mac/#{version.after_comma.before_colon}-#{version.after_colon}/Tower-#{version.before_comma}-#{version.after_comma.before_colon}.zip",
      verified: "fournova-app-updates.s3.amazonaws.com/"
  name "Tower"
  desc "Git client focusing on power and productivity"
  homepage "https://www.git-tower.com/"

  livecheck do
    url "https://updates.fournova.com/updates/tower3-mac/stable"
    strategy :page_match do |page|
      match = page.match(%r{(\d+(?:\.\d+)*)-([a-z0-9]+)/Tower-(\d+(?:\.\d+)*)-(\d+(?:\.\d+)*)\.zip}i)
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
