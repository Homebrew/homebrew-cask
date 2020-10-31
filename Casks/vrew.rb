cask "vrew" do
  version "0.6.0"
  sha256 "4f8230521d5e32b55c57673cc95ccdfce4672859277d9f34a3a19962661a9ed3"

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  name "vrew"
  homepage "https://vrew.voyagerx.com/"

  app "Vrew.app"

  zap trash: [
    "~/Library/Application Support/vrew",
    "~/Library/Preferences/com.voyagerx.vrew.plist",
  ]
end
