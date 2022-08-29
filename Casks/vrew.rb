cask "vrew" do
  version "0.11.32"
  sha256 "6518722bc23bab2b3beabb30918d25c1d0c278eb970ca0eabf754f80c1882d6c"

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
