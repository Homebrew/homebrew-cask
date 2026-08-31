cask "valkey-admin" do
  arch arm: "-arm64"

  version "1.1.1"
  sha256 arm:   "b1244e74c7feca7b1eb1c2b20582e12e9f23aa5b9cbcc0541d4b9cb2fdb19a3a",
         intel: "01a14d0e53ab3665a421be0e7156b6a26cc7557cc5425f0a4f9ea45055b38d06"

  url "https://github.com/valkey-io/valkey-admin/releases/download/v#{version}/Valkey.Admin-#{version}#{arch}.dmg"
  name "Valkey Admin"
  desc "Administration tool for Valkey clusters and standalone instances"
  homepage "https://valkey-admin.valkey.io/"

  auto_updates true
  depends_on macos: :monterey

  app "Valkey Admin.app"

  zap trash: "~/Library/Application Support/Valkey Admin"
end
