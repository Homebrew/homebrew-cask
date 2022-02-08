cask "textadept" do
  version "11.3"
  sha256 "301674a72b652eecfd3f4e50f9a0a5f788eed7c6a45a25be9a776730db1303d9"

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
