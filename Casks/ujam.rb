cask "ujam" do
  version "0.3.4"
  sha256 "7de2f6834f292a7c97105cbf34616c0864f995020c02858587a38cfd87e7b403"

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
