cask "xonotic" do
  version "0.8.6"
  sha256 "50850f8d800e7499722f6ea61e478e96464a375494b5a24da93aa0598cbe964d"

  url "https://dl.xonotic.org/xonotic-#{version}.zip"
  name "Xonotic"
  desc "Arena-style first person shooter"
  homepage "https://xonotic.org/"

  livecheck do
    url "https://xonotic.org/download/"
    regex(%r{href=.*?/xonotic[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  suite "Xonotic"

  zap trash: "~/Library/Application Support/xonotic"
end
