cask "weasis" do
  arch arm: "aarch64", intel: "x86-64"

  version "4.5.1"
  sha256 arm:   "c9248037c6fd15af73227c80f97ef855f218a958aeec70379e606c82cb8b8257",
         intel: "b6fcda972e5caf6865fedc3f4f9898e13a04257a6891afa06623d8390bf55422"

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
