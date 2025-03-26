cask "vimcal" do
  arch arm: "-arm64"
  host_suffix = on_arch_conditional arm: "m1", intel: "production"

  version "1.0.33"
  sha256 arm:   "658502cb818c0c3d315e3a1076b2e997641fa0ff23456739a62bece3fc7538fd",
         intel: "5dc397704b71e6efd918a8a30e4c948b30c3fb200baeae94699ac58532310d94"

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
