cask "textadept" do
  version "11.2"
  sha256 "cc7e782885c16dfedc97ba6545cfc7ba51e5b9db9f8cf86d94f6def89414da67"

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
