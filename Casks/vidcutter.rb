cask "vidcutter" do
  version "6.0.2"
  sha256 "cebc95bd66d5df7fb46831bdd12993a9738ea1528850275e09a3ca69446851a7"

  url "https://github.com/ozmartian/vidcutter/releases/download/#{version.major_minor}.0/VidCutter-#{version}-macOS.dmg"
  name "VidCutter"
  desc "Media cutter and joiner"
  homepage "https://github.com/ozmartian/vidcutter"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/VidCutter[._-]v?(\d+(?:\.\d+)+)[._-]macOS\.dmg}i)
  end

  app "VidCutter.app"
end
