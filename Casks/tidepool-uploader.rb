cask "tidepool-uploader" do
  version "2.33.0"
  sha256 "b4a4f906ff8d6aa9d84276598167111f3bf72677de4e43fc5fedcc80872e981a"

  # github.com/tidepool-org/chrome-uploader/ was verified as official when first introduced to the cask
  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/"
  appcast "https://github.com/tidepool-org/chrome-uploader/releases.atom"
  name "Tidepool Uploader"
  desc "Uploads diabetes device data to Tidepool's backend"
  homepage "https://tidepool.org/"

  app "Tidepool Uploader.app"
end
