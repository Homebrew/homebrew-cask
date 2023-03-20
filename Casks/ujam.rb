cask "ujam" do
  version "0.3.16"
  sha256 "f0a8d3e48879978b3d1c03dcd69b467f6b40688ad0c54f8ffbddf61202fcb85d"

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
