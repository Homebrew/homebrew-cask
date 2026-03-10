cask "vimcal" do
  arch arm: "-arm64"
  host_suffix = on_arch_conditional arm: "m1", intel: "production"

  version "1.0.46"
  sha256 arm:   "5317ff903de1e2f3958298b55824cf9cf848511c416ff5b3a7a3b798a2a44fb6",
         intel: "8bfbb3a9f41060cbf0865ccc2d52a4fff5c49048ada74bfb076f9a37eb6d790d"

  url "https://vimcal-#{host_suffix}.s3.amazonaws.com/Vimcal-#{version}#{arch}.dmg",
      verified: "vimcal-#{host_suffix}.s3.amazonaws.com/"
  name "Vimcal"
  desc "Calendar"
  homepage "https://vimcal.com/"

  livecheck do
    url "https://vimcal-#{host_suffix}.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Vimcal.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vimcal.app.sfl*",
    "~/Library/Application Support/Vimcal",
    "~/Library/Preferences/com.vimcal.app.plist",
    "~/Library/Saved Application State/com.vimcal.app.savedState",
  ]
end
