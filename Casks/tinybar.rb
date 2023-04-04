cask "tinybar" do
  version "0.4.0"
  sha256 "032b1284d3f3ef328d6c1de6cad51b3afba35a4216ad54f3e6724ffdd05bd68d"

  url "https://github.com/aorumbayev/tinybar/releases/download/v#{version}/TinyBar.zip"
  name "TinyBar"
  desc "MacOS menu bar app to see prices of ASA pairs from Tinyman.org"
  homepage "https://tinybar.app"

  app "TinyBar.app"
end
