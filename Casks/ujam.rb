cask "ujam" do
  version "0.3.10"
  sha256 "61343efc8c55c2f8b3c8c8bb1a8b2b63178faf9fcca7b43cdd460ed9c27a001f"

  url "https://software.ujam.com/ujamapp/UJAM-#{version}.dmg"
  name "UJAM"
  desc "Administration tool for UJAM products"
  homepage "https://www.ujam.com/"

  livecheck do
    url "https://software.ujam.com/ujamapp/latest-mac.yml"
    strategy :electron_builder
  end

  app "UJAM.app"

  zap trash: "~/Library/Application Support/ujamapp"
end
