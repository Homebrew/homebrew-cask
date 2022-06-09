cask "ujam" do
  version "0.3.6"
  sha256 "ac52b94d236e48c14553e5a4b6c35cd15a59efc6794be760b98d787fa4db054f"

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
