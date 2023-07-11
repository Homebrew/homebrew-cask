cask "tofu" do
  version "3.0"
  sha256 :no_check

  url "https://amarsagoo.info/tofu/Tofu.dmg"
  name "Tofu"
  homepage "https://amarsagoo.info/tofu/"

  livecheck do
    url :homepage
    regex(/Version\s+(\d+(?:\.\d+)+)/i)
  end

  app "Tofu.app"
end
