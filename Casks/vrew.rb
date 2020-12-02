cask "vrew" do
  version "0.6.6"
  sha256 "e9fd43333807f36f50eec2c5d98b95525d457746dea05563f0da73474bc6e84b"

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  appcast "https://s3-ap-northeast-2.amazonaws.com/vrew-files.voyagerx.com/latest-mac.yml"
  name "vrew"
  desc "Video editor"
  homepage "https://vrew.voyagerx.com/"

  app "Vrew.app"

  zap trash: [
    "~/Library/Application Support/vrew",
    "~/Library/Preferences/com.voyagerx.vrew.plist",
  ]
end
