cask "vrew" do
  version "0.5.8"
  sha256 "594eede70f6af9ce491494da88e3d15abac657b3248f98eb4e0a335a356c31c9"

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  name "vrew"
  homepage "https://vrew.voyagerx.com/"

  app "Vrew.app"

  zap trash: [
    "~/Library/Application Support/vrew",
    "~/Library/Preferences/com.voyagerx.vrew.plist",
  ]
end
