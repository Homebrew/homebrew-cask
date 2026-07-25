cask "weasis" do
  arch arm: "aarch64", intel: "x86-64"

  version "4.7.1"
  sha256 arm:   "4dc9c9fc0b4a017c11d2aa1f063b54a4f6e9fefd058e96e8a145a01e6ab84888",
         intel: "717bf23faf2c3eec419da5ffbf17afdc4e5d1c134507c4ed08adf197881e3a60"

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
