cask "wing-personal" do
  version "11.0.2.0"
  sha256 "77757c982aec6b1ff27500d7adde11c1ca8edf0b7a8084291e6a8731d86cb9e7"

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  name "Wing Personal"
  desc "Free Python IDE designed for students and hobbyists"
  homepage "https://www.wingware.com/"

  livecheck do
    url "https://wingware.com/downloads/wing-personal"
    regex(%r{href=.*?/pub/wing-personal/v?(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: ">= :catalina"

  app "Wing Personal.app"

  zap trash: [
    "~/.wingpersonal#{version.major}",
    "~/Library/Application Support/Wing Personal",
    "~/Library/Caches/com.apple.python/Applications/Wing Personal.app",
    "~/Library/Caches/com.wingware.wing-personal",
    "~/Library/Saved Application State/com.wingware.wing-personal.savedState",
  ]
end
