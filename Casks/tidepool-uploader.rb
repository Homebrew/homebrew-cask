cask "tidepool-uploader" do
  version "2.36.3"
  sha256 "33d3559091392ea7495271891db201e4b7c2a02f1081409f2a0cb8b3c7288c81"

  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/",
      verified: "github.com/tidepool-org/chrome-uploader/"
  name "Tidepool Uploader"
  desc "Uploads diabetes device data to Tidepool's backend"
  homepage "https://tidepool.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tidepool Uploader.app"
end
