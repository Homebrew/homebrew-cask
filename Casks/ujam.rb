cask "ujam" do
  version "0.3.7"
  sha256 "b0cdf6bd0a48d3cf58a6a94cf5cf258e733fb33462909e2bd5df5976d3a47c62"

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
