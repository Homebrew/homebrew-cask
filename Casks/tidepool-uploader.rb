cask "tidepool-uploader" do
  version "2.38.0"
  sha256 "a6a4854955b77ff9adc262695823268950630c34a1f4f56022b75215d86aba28"

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
