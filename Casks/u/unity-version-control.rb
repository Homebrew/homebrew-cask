cask "unity-version-control" do
  arch arm: "arm64", intel: "x64"
  zip_arch = on_arch_conditional arm: "-arm"

  version "11.0.16.10371"
  sha256 arm:   "da963db4880910eb520fbf65ec25757d4ca569f02895b69486db392b3eb08f5e",
         intel: "2807888445dd0d9bfc31112f4e1b8eac164a18996ff1686b341eb4576491415e"

  url "https://d26z97tczqnlef.cloudfront.net/releases/#{version}/plasticscm/osx/unity-vcs-#{version}-mac#{zip_arch}.pkg.zip"
  name "Unity Version Control"
  name "Unity VCS"
  name "UVCS"
  desc "Install Unity Version Control locally and join a Cloud Edition subscription"
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
