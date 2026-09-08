cask "upscayl" do
  os = on_system_conditional macos: "mac.dmg", linux: "linux.AppImage"

  version "2.15.0"

  on_macos do
    sha256 "0e53c9ee8c1800cb3e2ce0f574e4e1a35a51945e19ff2b93f33928bbd7fd4c5a"

    depends_on macos: :monterey

    app "Upscayl.app"

    zap trash: [
      "~/Library/Application Support/Upscayl",
      "~/Library/Preferences/org.upscayl.app.plist",
      "~/Library/Saved Application State/org.upscayl.app.savedState",
    ]
  end
  on_linux do
    sha256 "6459457e589bcb99e779ea442dce608bacda33916b7019a8862b7c6252aa8229"

    depends_on arch: :x86_64

    app_image "upscayl-#{version}-linux.AppImage", target: "Upscayl.AppImage"

    zap trash: [
      "~/.config/Upscayl",
      "~/.config/upscayl",
    ]
  end

  url "https://github.com/upscayl/upscayl/releases/download/v#{version}/upscayl-#{version}-#{os}"
  name "Upscayl"
  desc "AI image upscaler"
  homepage "https://upscayl.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
