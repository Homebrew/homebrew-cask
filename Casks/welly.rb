cask "welly" do
  version "3.1.2"
  sha256 "ac1ffe9e5371da8d413bd937bdb27b828c58b7c8ea12556d473ea960096513be"

  url "https://github.com/clyang/welly/releases/download/#{version}/Welly.v#{version}.zip"
  appcast "https://github.com/clyang/welly/releases.atom"
  name "Welly"
  homepage "https://github.com/clyang/welly"

  auto_updates true

  app "Welly.app"

  zap trash: [
    "~/Library/Application Support/Welly",
    "~/Library/Caches/Welly",
    "~/Library/Caches/org.net9.Welly",
    "~/Library/Cookies/org.net9.Welly.binarycookies",
    "~/Library/Preferences/org.net9.Welly.plist",
  ]
end
