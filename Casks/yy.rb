cask "yy" do
  version "1.8.0"
  sha256 "c97c1380584d67893aa55f4ecc0dbce8951f36e53e801e0732b3dda499dcdd64"

  # yydl.duowan.com/mac/YY/ was verified as official when first introduced to the cask
  url "https://yydl.duowan.com/mac/YY/#{version}/YY-#{version}.dmg"
  appcast "https://www.yy.com/index/t/download"
  name "YY"
  homepage "https://www.yy.com/"

  app "YY.app"
end
