cask "textadept" do
  version "11.4"
  sha256 "b92daef1e4eb6223941a12594364a774d2627f96b7ce8ae319c43760e2c53643"

  url "https://github.com/orbitalquark/textadept/releases/download/textadept_#{version}/textadept_#{version}.macOS.zip",
      verified: "github.com/orbitalquark/textadept/"
  name "Textadept"
  desc "Text editor"
  homepage "https://orbitalquark.github.io/textadept/"

  livecheck do
    url :url
    regex(/^textadept[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "textadept_#{version}.macOS/Textadept.app"
  binary "textadept_#{version}.macOS/ta"
end
