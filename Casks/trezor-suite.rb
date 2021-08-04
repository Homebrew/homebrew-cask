cask "trezor-suite" do
  version "21.7.1"
  sha256 "23c84ba9bdf952404d7c69d29c8813ef052a4448176af3f08180d45268a8d4cd"

  url "https://suite.trezor.io/web/static/desktop/Trezor-Suite-#{version}-mac.dmg"
  name "TREZOR Suite"
  desc "Managing crypto just got safer and easier"
  homepage "https://suite.trezor.io/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/href=.*?Trezor-Suite-(\d+(?:\.\d+)*)-/i)
  end

  app "Trezor Suite.app"
end
