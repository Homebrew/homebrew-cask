cask "vrew" do
  version "0.5.7"
  sha256 "dafb709a4d4dcdfc16198bb3694a94940561775ed7c4cb295d3fca40c167dea5"

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  name "vrew"
  homepage "https://vrew.voyagerx.com/"

  app "Vrew.app"

  zap trash: [
    "~/Library/Application Support/vrew",
    "~/Library/Preferences/com.voyagerx.vrew.plist",
  ]
end
