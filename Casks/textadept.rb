cask "textadept" do
  version "11.1"
  sha256 "f6cb983dd5101c44c5b087d15218a5ed103b497ff108907f693458510afd5f84"

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
