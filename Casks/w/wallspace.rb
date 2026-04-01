cask "wallspace" do
  version "1.4.4"
  sha256 "5201ae22c2ebff033e2d0eb5e55c6cb8e299e9432751536665c00280cd9939df"

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
    "~/Library/Application Support/CrashReporter/Wallspace_*.plist",
    "~/Library/Application Support/Wallspace",
    "~/Library/Caches/Wallspace",
    "~/Library/HTTPStorages/wallspace.app",
    "~/Library/Preferences/wallspace.app.plist",
  ]
end
