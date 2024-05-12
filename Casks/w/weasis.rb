cask "weasis" do
  arch arm: "aarch64", intel: "x86-64"

  version "4.4.0"
  sha256 arm:   "205e1d2da8c7c649760e1e3daff7644f20b41d86abbfe19115765c5a026a92cb",
         intel: "a696d9ac7a834eb37400c74006a859a460d5c3766290de48cc43707427a571b2"

  url "https://github.com/nroduit/Weasis/releases/download/v#{version}/Weasis-#{version}-#{arch}.pkg"
  name "Weasis"
  desc "Free DICOM viewer for displaying and analyzing medical images"
  homepage "https://github.com/nroduit/Weasis"

  auto_updates true
  depends_on macos: ">= :sierra"

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
