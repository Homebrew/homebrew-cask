cask "unity-version-control" do
  arch arm: "arm64", intel: "x64"
  zip_arch = on_arch_conditional arm: "-arm"

  version "11.0.16.10616"
  sha256 arm:   "cc31f3133aa1590bb09075492a5ae65e517ca0146a5bafc78f0f8421bf2e3c6f",
         intel: "2982b8d85701f021f752976150511b89d4a540740b2cb4580b461e956e768bf1"

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
