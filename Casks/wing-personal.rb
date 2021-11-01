cask "wing-personal" do
  arch = Hardware::CPU.intel? ? "intel" : "arm64"

  version "8.1.0.0"

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "99d0a06694265e04b74394ef6b1fc3c8c7449fa1106091a2743c51ed5c0170d4"
  else
    sha256 "942a09fcba631bfba4a40340c34e9ab0bd88040e8229500860139a97f5cac934"
  end

  name "Wing Personal"
  desc "Free Python IDE designed for students and hobbyists"
  homepage "https://www.wingware.com/"

  livecheck do
    url "https://wingware.com/pub/wing-personal/"
    regex(%r{href="(\d+(?:\.\d+)*)/"}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Wing Personal.app"
end
