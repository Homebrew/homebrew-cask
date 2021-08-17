cask "tidepool-uploader" do
  version "2.37.1"
  sha256 "52d9749a440437ab8ae609a7e16ccec3ce7d10f155340a79c50cc86649f74c8c"

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
