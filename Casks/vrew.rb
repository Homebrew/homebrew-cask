cask "vrew" do
  version "0.5.3"
  sha256 "829c12b6772f940d34132dd087bc134aa69c21eab165ed71d6d6ac13749bcc8c"

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  name "vrew"
  homepage "https://vrew.voyagerx.com/"

  app "Vrew.app"

  zap trash: [
    "~/Library/Application Support/vrew",
    "~/Library/Preferences/com.voyagerx.vrew.plist",
  ]
end
