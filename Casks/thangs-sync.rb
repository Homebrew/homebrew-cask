cask "thangs-sync" do
  version "1.4.1"
  sha256 :no_check

  url "https://thangs.com/api/system/sync-client-location?type=mac"
  name "Thangs Sync"
  desc "Secure, 3D-native revision control in the cloud"
  homepage "https://thangs.com/sync"

  livecheck do
    url :url
    regex(/Thangs%20Sync[._-]v?(\d+(?:\.\d+)+)\./)
    strategy :header_match
  end

  app "Thangs Sync.app"

  zap trash: [
    "~/Library/Application Support/thangs-sync-client",
    "~/Library/Preferences/com.ThangsSyncClient.app.plist",
  ]
end
