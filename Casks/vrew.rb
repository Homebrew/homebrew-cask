cask "vrew" do
  version "0.7.0"
  sha256 "1aa86b2aaabde99f4802223b1d633e8c6975e6cca0d84b5e09810016b023b1b4"

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
