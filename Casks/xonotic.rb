cask "xonotic" do
  version "0.8.5"
  sha256 "0f92aa238362aeb059b9d9026a9bd38d6217423a35c19f126fb39e38736e37e5"

  url "https://dl.xonotic.org/xonotic-#{version}.zip"
  name "Xonotic"
  desc "Arena-style first person shooter"
  homepage "https://www.xonotic.org/"

  livecheck do
    url "https://www.xonotic.org/download/"
    regex(%r{href=.*?/xonotic[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  suite "Xonotic"
end
