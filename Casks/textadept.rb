cask "textadept" do
  version "11.0"
  sha256 "60b7e3c5debfc396092e8a2b14ebb806ba6803ea9bc665e5ca9a625e3248cf92"

  url "https://github.com/orbitalquark/textadept/releases/download/textadept_#{version}/textadept_#{version}.macOS.zip",
      verified: "github.com/orbitalquark/textadept/"
  name "Textadept"
  desc "Text editor"
  homepage "https://orbitalquark.github.io/textadept/"

  livecheck do
    url :url
    strategy :git
    regex(/^textadept_(\d+(?:\.\d+)*)$/i)
  end

  app "textadept_#{version}.macOS/Textadept.app"
  binary "textadept_#{version}.macOS/ta"
end
