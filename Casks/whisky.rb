cask "whisky" do
  version "pre-0.2.1"
  sha256 "64f1dc3b594b6f570232c2daea17c8828ffc7f721839d4179c977ce238eb903b"

  url "https://github.com/IsaacMarovitz/Whisky/releases/download/#{version}/Whisky.zip"
  name "whisky"
  desc "Modern Wine wrapper for macOS built with SwiftUI"
  homepage "https://github.com/IsaacMarovitz/Whisky"

  app "Whisky.app"
end
