cask "yed" do
  version "3.23.1"
  sha256 "ac4baa4f76b025539a1c41fe5741e9c395463d6b5cae5fef02cd07f298a9db08"

  url "https://www.yworks.com/resources/yed/demo/yEd-#{version}_with-JRE15.dmg"
  name "yWorks yEd"
  desc "Create diagrams manually, or import external data for analysis"
  homepage "https://www.yworks.com/products/yed"

  livecheck do
    url "https://www.yworks.com/products/yed/download#download"
    regex(/yEd[._-]v?(\d+(?:\.\d+)+)[._-]with[._-]JRE\d+?\.dmg/i)
  end

  app "yEd.app"

  zap trash: [
    "~/Library/Saved Application State/com.yworks.yEd.savedState",
    "~/Library/yWorks/yEd",
  ]
end
