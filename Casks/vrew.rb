cask "vrew" do
  version "0.5.1"
  sha256 "ba1248bd3226e60bd3a2a118ab443963744e3ebe9828835513cab4faccaf0ccf"

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  name "vrew"
  homepage "https://vrew.voyagerx.com/"

  app "Vrew.app"

  zap trash: [
    "~/Library/Application Support/vrew",
    "~/Library/Preferences/com.voyagerx.vrew.plist",
  ]
end
