cask "weasis" do
  arch arm: "aarch64", intel: "x86-64"

  version "4.6.5"
  sha256 arm:   "7c28cf3547a637b57f98c18fda80abb2911b84d3056f8ec911a924507ea39bf5",
         intel: "d9d9cbc1d84c4291e930459617bf340d63634db57b844917513a2ea46f3cbe84"

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
