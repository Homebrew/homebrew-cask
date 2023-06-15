cask "wing-personal" do
  version "9.1.1.1"
  sha256 "7d418b17fa789080f92dfbfb9745ef93cf0023c747f63dd69e7e03facc44db6f"

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
