cask "ukrainian-unicode-layout" do
  version "1.2.0"
  sha256 "224f7ce62722df4817d994a706179695589f0679164f0c48af08e2a518ac6fc6"

  url "https://github.com/korzhyk/macOS-Ukrainian-Unicode-Layout/archive/#{version}.tar.gz"
  name "Ukrainian Unicode Layout"
  desc "Installer for Ukrainian Unicode layout"
  homepage "https://github.com/korzhyk/OSX-Ukrainian-Unicode-Layout"

  artifact "macOS-Ukrainian-Unicode-Layout-#{version}",
           target: "#{Dir.home}/Library/Keyboard Layouts/Ukrainian-Unicode-Layout.bundle"
end
