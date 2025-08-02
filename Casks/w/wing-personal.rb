cask "wing-personal" do
  version "11.0.3.0"
  sha256 "d62ed58ca60a3890caf49b4d28b69f271dae0baecd2767d20a96eef35f2121ed"

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
