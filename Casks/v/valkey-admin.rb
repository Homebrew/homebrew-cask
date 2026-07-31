cask "valkey-admin" do
  arch arm: "-arm64"

  version "1.1.0"
  sha256 arm:   "20b270cb81c811270d1020e0d80bc885c2d08f6258bb6373a28aad60252c2960",
         intel: "a92bbab7727ebb0660053ed51a13dc072de0bf2c783360f1eb696a07c2bba22f"

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
