cask "unity-version-control" do
  arch arm: "arm64", intel: "x64"
  zip_arch = on_arch_conditional arm: "-arm"

  version "11.0.16.10484"
  sha256 arm:   "4790382952b724b0bc3f0c0c520f85a9e3d926b182fd41a86d29b67c3aefaa6f",
         intel: "74645bde37c9c4938858542783b54b7898ab8bf27c277ff9086069ae9b572ab9"

  url "https://d26z97tczqnlef.cloudfront.net/releases/#{version}/plasticscm/osx/unity-vcs-#{version}-mac#{zip_arch}.pkg.zip"
  name "Unity Version Control"
  name "Unity VCS"
  name "UVCS"
  desc "Version control and source code management tool"
  homepage "https://docs.unity.com/en-us/unity-version-control"

  livecheck do
    url "https://www.plasticscm.com/download"
    regex(%r{href=.*?/download/v?(\d+(?:\.\d+)+)/plasticscm/[^/]+/cloudedition}i)
  end

  depends_on :macos

  pkg "unity-vcs-osx-#{arch}-#{version}.pkg"

  uninstall launchctl: [
              "com.codicesoftware.plasticscm.macplastic",
              "com.codicesoftware.plasticscm.server",
              "com.codicesoftware.unityvcstray",
            ],
            quit:      ["com.codicesoftware.plasticscm", "com.codicesoftware.unityvcstray"],
            pkgutil:   [
              "com.codicesoftware.plasticscm.macplastic",
              "com.codicesoftware.plasticscm.server",
            ],
            delete:    [
              "/Applications/Gluon.app",
              "/Applications/PlasticSCM.app",
              "/Applications/PlasticSCMServer.app",
            ]

  zap trash: "~/Library/Saved Application State/com.codicesoftware.plasticscm.savedState"
end
