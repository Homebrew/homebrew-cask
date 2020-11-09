cask "textadept" do
  version "10.8"
  sha256 "3c5fb990325f4af3ef443a97dad2409fb0986faf1e553b8f87f6d42dfb6fcc24"

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  appcast "https://github.com/orbitalquark/textadept/releases.atom"
  name "Textadept"
  homepage "https://foicica.com/textadept/"

  app "textadept_#{version}.osx/Textadept.app"
  binary "textadept_#{version}.osx/ta"
end
