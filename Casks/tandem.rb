cask "tandem" do
  version "1.5.15"
  sha256 "468d81344ab0cefbc9ad6395bd423964c6881cc5ea10339ce2c1733b9edafa92"

  # wisp-app.s3-accelerate.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://wisp-app.s3-accelerate.amazonaws.com/Tandem-#{version}-mac.zip"
  appcast "https://wisp-app.s3-accelerate.amazonaws.com/latest-mac.yml"
  name "Tandem"
  homepage "https://tandem.chat/"

  app "Tandem.app"
end
