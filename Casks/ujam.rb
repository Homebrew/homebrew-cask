cask "ujam" do
  version "0.3.12"
  sha256 "bd85bb84953c9cd42e7d4181bdcd9ec0538aa8292c980bb5e0365c6e0689e8ad"

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
