cask "wing-personal" do
  arch = Hardware::CPU.intel? ? "intel" : "arm64"

  version "8.1.2.0"

  if Hardware::CPU.intel?
    sha256 "ad68ed19c58e0231fc2799fe7032681c3f2e13afba9427f8f47218fd2a0c99b5"
  else
    sha256 "0709b0a57eeea7da1bd515556bff25fdda99698c530a5e2b9cc61262090adfe4"
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
