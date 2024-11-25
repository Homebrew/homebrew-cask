cask "wings3d" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "2.4"
    sha256  "8128f2cf6d22408b9bfa433b32a570915ce2d58642268ddb44919efe30d13ff5"
  end
  on_intel do
    version "2.3"
    sha256 "dbb1bbb229c3a3737fc2558d7a64996780dada3da3c75e46bc357789dde8092a"
  end

  url "https://downloads.sourceforge.net/wings/#{version}/wings-#{version}-macos-#{arch}.dmg",
      verified: "sourceforge.net/wings/"
  name "Wings 3D"
  desc "Advanced subdivision modeller"
  homepage "https://www.wings3d.com/"

  livecheck do
    url :url
    regex(/url=.*?wings[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  app "Wings3D.app"

  zap trash: "~/Library/Caches/Wings3D"
end
