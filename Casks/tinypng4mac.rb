cask "tinypng4mac" do
  version "1.0.4"
  sha256 "f3605f5974eab8fbe6ec461a2a79365698162e4f96159bf803074536a624e31e"

  url "https://github.com/kyleduo/TinyPNG4Mac/releases/download/v#{version}/TinyPNG4Mac_#{version.dots_to_underscores}.zip"
  appcast "https://github.com/kyleduo/TinyPNG4Mac/releases.atom"
  name "TinyPNG4Mac"
  desc "TinyPNG client"
  homepage "https://github.com/kyleduo/TinyPNG4Mac"

  app "TinyPNG4Mac.app"
end
