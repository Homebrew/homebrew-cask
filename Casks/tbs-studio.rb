cask "tbs-studio" do
  version "1.3.3_2017112800"
  sha256 "3b24b26556cb65fbf24da29e060a8f89ea3c36b1f0a973a54c523bccc034832c"

  # mcaredown.3g.qq.com/browser/ was verified as official when first introduced to the cask
  url "https://mcaredown.3g.qq.com/browser/tes/TBS_Studio_mac_v#{version}.dmg.zip"
  name "TBS Studio"
  homepage "https://x5.tencent.com/tbs/guide/debug.html"

  app "TBS_Studio.app"
end
