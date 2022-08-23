cask "wing-personal" do
  arch arm: "arm64", intel: "intel"

  version "8.3.3.0"
  sha256 arm:   "9ef3113269f165c8a3235827cb39321fe488557440569c2060ff5b136b58a53a",
         intel: "06214808731fe6e267a7509254a62ffabf529d15f0a6ea0c45acbcd16191162c"

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}-#{arch}.dmg"
  name "Wing Personal"
  desc "Free Python IDE designed for students and hobbyists"
  homepage "https://www.wingware.com/"

  livecheck do
    url "https://wingware.com/pub/wing-personal/"
    regex(%r{href="(\d+(?:\.\d+)+)/"}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Wing Personal.app"
end
