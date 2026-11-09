cask "weasis" do
  arch arm: "aarch64", intel: "x86-64"

  version "4.8.0"
  sha256 arm:   "0fc7ab37e1bebaff511a63b8c075c053c0dde26e4bb753b1d50c88104c185d9d",
         intel: "cc28043cf687ee4d27b8aea4ed923768065ccc31ff5a0d5be33ca9da163d9ef2"

  url "https://github.com/nroduit/Weasis/releases/download/v#{version}/Weasis-#{version}-#{arch}.pkg"
  name "Weasis"
  desc "Free DICOM viewer for displaying and analyzing medical images"
  homepage "https://weasis.org/en/index.html"

  livecheck do
    url "https://weasis.org/en/api/release/api.json"
    strategy :json do |json|
      json["version"]&.tr("v", "")
    end
  end

  auto_updates true
  depends_on :macos

  pkg "Weasis-#{version}-#{arch}.pkg"

  uninstall pkgutil: [
              "org.weasis.launcher",
              "org.weasis.viewer",
            ],
            delete:  "/Applications/Weasis.app"

  zap trash: [
    "~/.weasis",
    "~/Library/Saved Application State/org.weasis.launcher.savedState",
  ]
end
