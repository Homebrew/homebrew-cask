cask "thangs-sync" do
  version "1.1.45"
  sha256 :no_check

  url "https://thangs.com/api/system/sync-client-location?type=mac"
  name "Thangs Sync"
  desc "Secure, 3D-native revision control in the cloud"
  homepage "https://thangs.com/sync"

  livecheck do
    url :url
    regex(/Thangs%20Sync-(\d+(\.\d+)*)\./)
    strategy :header_match
  end

  app "Thangs Sync.app"
end
