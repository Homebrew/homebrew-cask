cask "weasis" do
  arch arm: "aarch64", intel: "x86-64"

  version "4.6.4"
  sha256 arm:   "5bda6b736f6c0a0bb7150a28d41e94bd1b43b3f969e1f3f7dcc2472412bd2c89",
         intel: "99c8764d33e9825d488e5b58138f6ac6735c2eda513db6d75eeaa6821b516d57"

  url "https://github.com/nroduit/Weasis/releases/download/v#{version}/Weasis-#{version}-#{arch}.pkg",
      verified: "github.com/nroduit/Weasis/"
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
