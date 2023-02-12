cask "vrew" do
  version "0.13.20"
  sha256 "5f072b97a42b4cb5ecadb5b6c2e210a25440f357eb3f90983efb7980b8db98b0"

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  name "vrew"
  desc "Video editor"
  homepage "https://vrew.voyagerx.com/"

  livecheck do
    url "https://s3-ap-northeast-2.amazonaws.com/vrew-files.voyagerx.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Vrew.app"

  zap trash: [
    "~/Library/Application Support/vrew",
    "~/Library/Preferences/com.voyagerx.vrew.plist",
  ]
end
