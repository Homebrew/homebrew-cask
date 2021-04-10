cask "virtualhostx" do
  version "2020.10,1016"
  sha256 "45e6cec09c0de78c9f9970798f47fd569cfb4f325e411d8c73e34cd808c47b73"

  url "https://download.clickontyler.com/virtualhostx/virtualhostxpro_#{version.after_comma}.zip"
  name "VirtualHostX"
  homepage "https://clickontyler.com/virtualhostx/"

  livecheck do
    url "https://shine.clickontyler.com/appcast.php?id=45"
    strategy :page_match
    regex(%r{href=.*?/virtualhostxpro_(\d+(?:\.\d+)*)\.zip}i)
  end

  depends_on macos: ">= :sierra"

  app "VirtualHostX.app"
end
