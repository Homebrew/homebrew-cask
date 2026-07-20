cask "wallspace" do
  version "1.5.1"
  sha256 "ac3b52dbe675273793256d03a12392a6fdccdf05f46d1d6d5d8cb745e173d61c"

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
  depends_on macos: :sequoia
  container type: :zip

  app "Wallspace.app"

  uninstall quit: "wallspace.app"

  zap trash: [
    "~/Library/Caches/Wallspace",
    "~/Library/HTTPStorages/wallspace.app",
    "~/Library/Preferences/wallspace.app.plist",
  ]
end
