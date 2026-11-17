cask "upload-remote" do
  version "2.0.3"
  sha256 "5b1f249b9713fd817e55831c9f68306bf96c8de61437e4a8ad0a7214d2efe683"

  url "https://www.ntwind.com/files/UploadRemote_#{version}-mac.dmg"
  name "Upload Remote"
  desc "Transfer files between devices over a local network"
  homepage "https://www.ntwind.com/remote/upload.html"

  livecheck do
    url "https://www.ntwind.com/download/UploadRemote_latest-mac.dmg"
    strategy :header_match
    regex(/UploadRemote[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on :macos

  app "Upload Remote.app"

  uninstall quit: "com.ntwind.remote.upload"

  zap trash: [
    "~/Library/Application Scripts/com.ntwind.remote.upload",
    "~/Library/Application Scripts/com.ntwind.remote.upload-LaunchAtLoginHelper",
    "~/Library/Containers/com.ntwind.remote.upload",
    "~/Library/Containers/com.ntwind.remote.upload-LaunchAtLoginHelper",
  ]
end
