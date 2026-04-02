cask "wallspace" do
  version "1.5"
  sha256 "12a633612a04d1883c4ca565686e426aa2300276a7017b13f53d56b4c682b000"

  url "https://dvivcibhncrefmnjtjeq.supabase.co/functions/v1/download-version?v=#{version}",
      verified: "dvivcibhncrefmnjtjeq.supabase.co/"
  name "Wallspace"
  desc "Live wallpaper app"
  homepage "https://wallspace.app/"

  livecheck do
    url "https://dvivcibhncrefmnjtjeq.supabase.co/storage/v1/object/public/public-files/appcast2.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"
  container type: :zip

  app "Wallspace.app"

  uninstall quit: "wallspace.app"

  zap trash: [
    "~/Library/Caches/Wallspace",
    "~/Library/HTTPStorages/wallspace.app",
    "~/Library/Preferences/wallspace.app.plist",
  ]
end
