cask "vrew" do
  version "0.6.1"
  sha256 "ef417441f950482e318d68b83da7d2e635a97564709f6d9636e891a001079b47"

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
