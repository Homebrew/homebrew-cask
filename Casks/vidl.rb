cask "vidl" do
  version "1.0.4"
  sha256 "9cdb8bc8a03b49c78fa4aecc3d1e58a755a7c92462e88bf650a9f0ae7b6521f1"

  url "https://omz-software.com/vidl/ViDL#{version.no_dots}.zip"
  appcast "https://ssl.webpack.de/omz-software.com/vidl/appcast.xml"
  name "ViDL for Mac"
  desc "GUI frontend for youtube-dl"
  homepage "https://omz-software.com/vidl/"

  app "ViDL.app"

  zap trash: [
    "~/Library/Application Support/ViDL/",
    "~/Library/Caches/com.omz-software.ViDL",
    "~/Library/Containers/com.omz-software.ViDL.ViDL-SafariExtension",
    "~/Library/Saved Application State/com.omz-software.ViDL.savedState",
  ]
end
