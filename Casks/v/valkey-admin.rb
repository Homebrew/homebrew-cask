cask "valkey-admin" do
  arch arm: "-arm64"

  version "1.2.0"
  sha256 arm:   "6da810891f589535b0e68dec2c605fb2cf7bc84447d9ad6d05199902d5d23396",
         intel: "434f09d66f1a6370da2a7701e134f64fa05208c36b05b74431d9f6b5e372a02d"

  url "https://github.com/valkey-io/valkey-admin/releases/download/v#{version}/Valkey.Admin-#{version}#{arch}.dmg"
  name "Valkey Admin"
  desc "Administration tool for Valkey clusters and standalone instances"
  homepage "https://valkey-admin.valkey.io/"

  auto_updates true
  depends_on macos: :monterey

  app "Valkey Admin.app"

  zap trash: "~/Library/Application Support/Valkey Admin"
end
