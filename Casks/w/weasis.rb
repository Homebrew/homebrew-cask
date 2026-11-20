cask "weasis" do
  arch arm: "aarch64", intel: "x86-64"

  version "4.8.1"
  sha256 arm:   "2e9425de62acb63cf2447f8aa9a022cbeadbd415d6869060800099b9dfd551be",
         intel: "025c68bb92059751de50b3521bdc51ee6355ff6d7600c651717f153a50f0270f"

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
