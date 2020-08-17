cask "ukrainian-unicode-layout" do
  version "1.0.0"
  sha256 "d0f6d760c640a7e27acfa69f8d7094e308962626216494415227e3bc1c6e8c5a"

  url "https://github.com/korzhyk/macOS-Ukrainian-Unicode-Layout/archive/#{version}.tar.gz"
  appcast "https://github.com/korzhyk/macOS-Ukrainian-Unicode-Layout/releases.atom"
  name "Ukrainian Unicode Layout"
  homepage "https://github.com/korzhyk/OSX-Ukrainian-Unicode-Layout"

  artifact "macOS-Ukrainian-Unicode-Layout-#{version}",
           target: "#{ENV["HOME"]}/Library/Keyboard Layouts/Ukrainian-Unicode-Layout.bundle"
end
