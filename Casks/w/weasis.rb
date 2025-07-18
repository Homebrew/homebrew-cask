cask "weasis" do
  arch arm: "aarch64", intel: "x86-64"

  version "4.6.2"
  sha256 arm:   "9fad295dded659d3814348e8bec0f9984411ffa4ddfa030c6b85f645d2df716b",
         intel: "8262415ea4655c04dfb6e253a411a5bec51377bfcf484b66feea5e4f1aecfb6d"

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
