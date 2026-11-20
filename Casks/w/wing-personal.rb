cask "wing-personal" do
  version "11.1.0.0"
  sha256 "cda18237fc627aa12bc8247c2c16be5650e82e90ac8d675ab657c537a9452303"

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  name "Wing Personal"
  desc "Free Python IDE designed for students and hobbyists"
  homepage "https://wingware.com/"

  # https://wingware.com/downloads/wing-personal
  # Wing Personal was discontinued with the release of Wing 12, but archived installers remain available.
  deprecate! date: "2026-09-14", because: :discontinued

  depends_on :macos

  app "Wing Personal.app"

  uninstall quit: "com.wingware.wing-personal"

  zap trash: [
    "~/.wingpersonal#{version.major}",
    "~/Library/Application Support/Wing Personal",
    "~/Library/Caches/com.apple.python/Applications/Wing Personal.app",
    "~/Library/Caches/com.wingware.wing-personal",
    "~/Library/Saved Application State/com.wingware.wing-personal.savedState",
  ]
end
