cask "tidepool-uploader" do
  version "2.36.1"
  sha256 "591ed4a559681c2e42f97426399b3a322a2c7ba9b0da0a446e0b087cc8493e39"

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
