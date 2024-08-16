cask "weasis" do
  arch arm: "aarch64", intel: "x86-64"

  version "4.5.0"
  sha256 arm:   "eb483435041ebe587c906b570067538aa39888527a52ae42561fe299df1f6fd1",
         intel: "4918d3142f8619800d2f46156781529ca463ebcb0a746d3e5124af68ccf1de34"

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
