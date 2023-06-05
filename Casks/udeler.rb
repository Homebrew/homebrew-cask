cask "udeler" do
  version "1.8.2"
  sha256 "5a2b65b7e5d4db864a0895a72b7fc76626ed4c2c0204abe50b84c0b6f81f6d7f"

  url "https://github.com/FaisalUmair/udemy-downloader-gui/releases/download/v#{version}/Udeler-#{version}-mac.dmg"
  name "Udeler"
  desc "Desktop application for downloading Udemy Courses"
  homepage "https://github.com/FaisalUmair/udemy-downloader-gui/"

  app "Udeler.app"

  caveats do
    discontinued
  end
end
