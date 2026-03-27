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

  depends_on macos: ">= :sequoia"
  container type: :zip

  app "Wallspace.app"

  uninstall quit: "wallspace.app"

  zap trash: [
    "~/Library/Caches/Wallspace",
    "~/Library/Caches/wallspace.app",
    "~/Library/HTTPStorages/wallspace.app",
    "~/Library/Logs/DiagnosticReports/Wallspace*.ips",
    "~/Library/Preferences/wallspace.app.plist",
  ]
end
