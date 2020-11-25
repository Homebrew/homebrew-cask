cask "vrew" do
  version "0.6.5"
  sha256 "f6bfc362bdb2030d15f48cbcbf86c5c56b03383647629b527cead0dc2c669a16"

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
