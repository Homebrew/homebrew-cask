cask "valkey-admin" do
  arch arm: "-arm64"

  version "1.3.0"
  sha256 arm:   "773d111cf8925582fdcac7f8c99fe34f5978b7fb22b0b44b01af0e3cd6803489",
         intel: "5dfac626d7022cb531b36d57b3b78e5f0bf44a0ab0a1944ed13e5f26bf99d3e8"

  url "https://github.com/valkey-io/valkey-admin/releases/download/v#{version}/Valkey.Admin-#{version}#{arch}.dmg"
  name "Valkey Admin"
  desc "Administration tool for Valkey clusters and standalone instances"
  homepage "https://valkey-admin.valkey.io/"

  auto_updates true
  depends_on macos: :monterey

  app "Valkey Admin.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.valkey.admin.sfl*",
    "~/Library/Application Support/Valkey Admin",
    "~/Library/Preferences/com.valkey.admin.plist",
  ]
end
