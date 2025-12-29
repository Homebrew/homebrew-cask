cask "weasis" do
  arch arm: "aarch64", intel: "x86-64"

  version "4.6.6"
  sha256 arm:   "9bc1d659aeef1b328e5c1bd0aa725141626f99c0f95c971d427ccc2fb134c0c0",
         intel: "0d66371807107a4dd80cb1367342c97fde08baa650b1699ca11af8a797698bfe"

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
