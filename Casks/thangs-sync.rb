cask "thangs-sync" do
  version "1.1.45"
  sha256 "b46d5ee41b25fa844b018a1221b8534cae824e1c98687e008af0691474b77940"

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
