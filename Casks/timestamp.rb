cask "timestamp" do
  version "1.0.1"
  sha256 "b8062b283ed80f62267e50a4486a8610b7d59cd60d6697ad018c9aae97d478bb"

  url "https://github.com/mzdr/timestamp/releases/download/#{version}/Timestamp-#{version}-mac.zip",
      verified: "github.com/mzdr/timestamp/"
  appcast "https://github.com/mzdr/timestamp/releases.atom"
  name "Timestamp"
  desc "Improved clock for the menu bar"
  homepage "https://mzdr.github.io/timestamp/"

  app "Timestamp.app"
end
