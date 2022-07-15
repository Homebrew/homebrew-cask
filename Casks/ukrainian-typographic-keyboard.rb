cask "ukrainian-typographic-keyboard" do
  version "2.0.0"
  sha256 "6f4e4e6c3f68de73961b45864ece2a72156b2d9c23fcfa62ef5377e658150b1e"

  url "https://github.com/denysdovhan/ukrainian-typographic-keyboard/archive/v#{version}.tar.gz",
      verified: "github.com/denysdovhan/ukrainian-typographic-keyboard"
  name "Ukrainian Unicode Layout"
  desc "Combined Ukrainian keyboard layout with typographic symbols"
  homepage "https://denysdovhan.com/ukrainian-typographic-keyboard"

  artifact "ukrainian-typographic-keyboard-#{version}",
           target: "#{Dir.home}/Library/Keyboard Layouts/ukrainian-typographic-keyboard.bundle"
end
