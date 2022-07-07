cask "ukrainian-unicode-layout" do
  version "1.1.0"
  sha256 "0b3a086a76f57a954a6c96fed9b470353c06576cd34f60d156e56be0ffaadd3d"

  url "https://github.com/korzhyk/macOS-Ukrainian-Unicode-Layout/archive/#{version}.tar.gz"
  name "Ukrainian Unicode Layout"
  desc "Installer for Ukrainian Unicode layout"
  homepage "https://github.com/korzhyk/OSX-Ukrainian-Unicode-Layout"

  artifact "macOS-Ukrainian-Unicode-Layout-#{version}",
           target: "#{Dir.home}/Library/Keyboard Layouts/Ukrainian-Unicode-Layout.bundle"
end
