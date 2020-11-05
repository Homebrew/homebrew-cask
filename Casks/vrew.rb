cask "vrew" do
  version "0.6.2"
  sha256 "766c9f98f2d073e4c619f2247d85d817cf6abcfd1f7bb34e89f804bda98bc00d"

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
