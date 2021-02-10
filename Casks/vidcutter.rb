cask "vidcutter" do
  version "6.0.2"
  sha256 "cebc95bd66d5df7fb46831bdd12993a9738ea1528850275e09a3ca69446851a7"

  url "https://github.com/ozmartian/vidcutter/releases/download/#{version.major_minor}.0/VidCutter-#{version}-macOS.dmg",
      verified: "github.com/ozmartian/vidcutter/"
  appcast "https://github.com/ozmartian/vidcutter/releases.atom"
  name "VidCutter"
  homepage "https://vidcutter.ozmartians.com/"

  app "VidCutter.app"
end
