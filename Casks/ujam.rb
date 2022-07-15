cask "ujam" do
  version "0.3.9"
  sha256 "f1b0deab764665a104d68447047e6ef77510bf6dc0b23a794583e83897f385c4"

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
