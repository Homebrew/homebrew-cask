cask "timestamp" do
  version "1.0.1"
  sha256 "b8062b283ed80f62267e50a4486a8610b7d59cd60d6697ad018c9aae97d478bb"

  # github.com/mzdr/timestamp/ was verified as official when first introduced to the cask
  url "https://github.com/mzdr/timestamp/releases/download/#{version}/Timestamp-#{version}-mac.zip"
  appcast "https://github.com/mzdr/timestamp/releases.atom"
  name "Timestamp"
  desc "Improved clock for the menu bar"
  homepage "https://mzdr.github.io/timestamp/"

  app "Timestamp.app"
end
