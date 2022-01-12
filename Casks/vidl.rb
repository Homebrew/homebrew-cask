cask "vidl" do
  version "1.0.2,102000"
  sha256 "af79d4f190fc9370abbd7c92e61be18b7c7c7bdd6cea235bd5e6c133ea153b2b"

  url "https://omz-software.com/vidl/ViDL#{version.csv.first.no_dots}.zip"
  name "ViDL for Mac"
  desc "GUI frontend for youtube-dl"
  homepage "https://omz-software.com/vidl/"

  livecheck do
    url "https://ssl.webpack.de/omz-software.com/vidl/appcast.xml"
    strategy :sparkle
  end

  app "ViDL.app"

  zap trash: [
    "~/Library/Application Support/ViDL/",
    "~/Library/Caches/com.omz-software.ViDL",
    "~/Library/Containers/com.omz-software.ViDL.ViDL-SafariExtension",
    "~/Library/Saved Application State/com.omz-software.ViDL.savedState",
  ]
end
