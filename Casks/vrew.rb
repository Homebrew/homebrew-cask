cask "vrew" do
  version "0.5.5"
  sha256 "d16188b087f787612478e7a317e399893ea8d2af4c9f63feb8fd7f8890008b2f"

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  name "vrew"
  homepage "https://vrew.voyagerx.com/"

  app "Vrew.app"

  zap trash: [
    "~/Library/Application Support/vrew",
    "~/Library/Preferences/com.voyagerx.vrew.plist",
  ]
end
