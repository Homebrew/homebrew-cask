cask "vrew" do
  version "0.5.2"
  sha256 "7c36bf7368d6f0f2df96bbb9e781253a5736ff483cf3f2958f7558204f6ec0f3"

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  name "vrew"
  homepage "https://vrew.voyagerx.com/"

  app "Vrew.app"

  zap trash: [
    "~/Library/Application Support/vrew",
    "~/Library/Preferences/com.voyagerx.vrew.plist",
  ]
end
