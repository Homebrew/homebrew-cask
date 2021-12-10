cask "tinypng4mac" do
  version "1.0.5"
  sha256 "ee66503f821b108e6506a6b9df1a61102ebc3eb9c9b8bad1a4793ee0f3312077"

  url "https://github.com/kyleduo/TinyPNG4Mac/releases/download/v#{version}/TinyPNG4Mac_#{version.dots_to_underscores}.zip"
  name "TinyPNG4Mac"
  desc "TinyPNG client"
  homepage "https://github.com/kyleduo/TinyPNG4Mac"

  app "TinyPNG4Mac.app"

  zap trash: "~/Library/Preferences/com.kyleduo.tinypngmac.plist"
end
