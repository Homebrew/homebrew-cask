cask "zeal" do
  version "0.9.2"
  sha256 "fd622cfc209b5bb9a6cd71892ad0ab129fd9889a3e90f539599a81e1e2afe452"

  url "https://github.com/zealdocs/zeal/releases/download/v#{version}/Zeal-#{version}-x86_64.AppImage"
  name "Zeal"
  desc "Offline documentation browser"
  homepage "https://zealdocs.org/"

  depends_on arch: :x86_64
  depends_on :linux

  app_image "Zeal-#{version}-x86_64.AppImage", target: "Zeal.AppImage"

  zap trash: [
    "~/.cache/Zeal",
    "~/.config/Zeal",
    "~/.local/share/Zeal",
  ]
end
