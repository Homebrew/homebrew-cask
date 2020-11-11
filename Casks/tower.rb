cask "tower" do
  version "6.0,256:90c50e48"
  sha256 "492da21c4f46e95b68bc768bda1fcd01ba00ea9ccd604680cb333b2d000346ba"

  # fournova-app-updates.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower3-mac/#{version.after_comma.before_colon}-#{version.after_colon}/Tower-#{version.before_comma}-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.fournova.com/updates/tower3-mac/stable"
  name "Tower"
  desc "Git client focusing on power and productivity"
  homepage "https://www.git-tower.com/"

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
