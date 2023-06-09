cask "whisky" do
    version "pre-0.2.1"
    sha256 :no_check
  
    url "https://github.com/IsaacMarovitz/Whisky/releases/download/v#{version}/Whisky.zip"
    name "Whisky"
    desc "A modern Wine wrapper for macOS built with SwiftUI"
    homepage "https://github.com/IsaacMarovitz/Whisky"
  
    app "Whisky.app"
  end