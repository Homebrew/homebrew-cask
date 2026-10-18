cask "zeal" do
  version "0.9.1"
  sha256 "25de0c73f9e45b6a3b50406f80c1b6580fe7f941381ea75e6739a51636ecb746"

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
