cask "textadept" do
  version "11.0"
  sha256 "60b7e3c5debfc396092e8a2b14ebb806ba6803ea9bc665e5ca9a625e3248cf92"

  url "https://github.com/orbitalquark/textadept/releases/download/textadept_#{version}/textadept_#{version}.macOS.zip"
  appcast "https://github.com/orbitalquark/textadept/releases.atom"
  name "Textadept"
  desc "Cross-platform text editor"
  homepage "https://orbitalquark.github.io/textadept/"

  app "textadept_#{version}.macOS/Textadept.app"
  binary "textadept_#{version}.macOS/ta"
end
