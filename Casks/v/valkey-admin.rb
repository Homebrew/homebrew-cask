cask "valkey-admin" do
  arch arm: "-arm64"

  version "1.0.1"
  sha256 arm:   "348bb49f2edbf0f48a43ae440703c23cdaecccfbe0dc797a86e44fdc02351752",
         intel: "958f640429c8a801cc0a71c681b5cb07379ef2bc687c96cb5ab79beba16cb8db"

  url "https://github.com/valkey-io/valkey-admin/releases/download/v#{version}/Valkey.Admin-#{version}#{arch}.dmg",
      verified: "github.com/valkey-io/valkey-admin/"
  name "Valkey Admin"
  desc "Administration tool for Valkey clusters and standalone instances"
  homepage "https://valkey-admin.valkey.io/"

  auto_updates true
  depends_on macos: :monterey

  app "Valkey Admin.app"

  zap trash: "~/Library/Application Support/Valkey Admin"
end
