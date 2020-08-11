cask "tiled" do
  version "1.4.2"
  sha256 "7ae7d8816e88f2bbc0e6afac51b47b6beb41399d3e0e17ace3cfca3b9de16691"

  # github.com/bjorn/tiled/ was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast "https://github.com/bjorn/tiled/releases.atom"
  name "Tiled"
  desc "Flexible level editor"
  homepage "https://www.mapeditor.org/"

  depends_on macos: ">= :sierra"

  app "Tiled.app"
end
