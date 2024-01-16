cask "yass" do
  arch arm: "-arm64", intel: "-x64"

  version "1.5.18"
  sha256 arm:   "0310a29e0366933f36947268d5ef1d7041179844bb1b79bc55d7948db2d43f2b",
         intel: "6f9e120406ddfbbc84e62da150f041a416f1feea97480117cf181ed63833c3e4"

  url "https://github.com/Chilledheart/yass/releases/download/#{version}/yass-macos-release#{arch}-#{version}.dmg"
  name "YASS"
  desc "Yet Another Shadow Socket"
  homepage "https://github.com/Chilledheart/yass"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "yass.app"
  binary "#{appdir}/yass.app/Contents/MacOS/yass"
end
