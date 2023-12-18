cask "vimcal" do
  arch arm: "-arm64"
  host_suffix = on_arch_conditional arm: "m1", intel: "production"

  version "1.0.26"
  sha256 arm:   "f91f842fa833a337e3269132895a7ce64d4d4c24002712b187d7cd094c5250a9",
         intel: "94abbda8c7e64b1d1e706fd8e21b45d7408f98ae971a75e3702442da4c404df8"

  url "https://vimcal-#{host_suffix}.s3.us-west-1.amazonaws.com/Vimcal-#{version}#{arch}.dmg",
      verified: "vimcal-#{host_suffix}.s3.us-west-1.amazonaws.com/"
  name "Vimcal"
  desc "Calendar"
  homepage "https://vimcal.com/"

  livecheck do
    url "https://vimcal-#{host_suffix}.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Vimcal.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/" \
    "com.vimcal.app.sfl*",
    "~/Library/Application Support/Vimcal",
    "~/Library/Preferences/com.vimcal.app.plist",
    "~/Library/Saved Application State/com.vimcal.app.savedState",
  ]
end
