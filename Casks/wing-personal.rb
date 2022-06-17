cask "wing-personal" do
  arch = Hardware::CPU.intel? ? "intel" : "arm64"

  version "8.3.2.0"

  if Hardware::CPU.intel?
    sha256 "9eae9bb82491cb1bce82ae407a39ac90f5ddfa1ff20bbcb33428091a1f462258"
  else
    sha256 "437193ca239d26085c7025a2c9b60acb5147c448bd7138485a3e50e5a510db2e"
  end

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
