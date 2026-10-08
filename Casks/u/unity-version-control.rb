cask "unity-version-control" do
  arch arm: "arm64", intel: "x64"
  zip_arch = on_arch_conditional arm: "-arm"

  version "11.0.16.10468"
  sha256 arm:   "e70876670a5e52a9b2593f9ad790d168e22c0a6e174c785d54dc211d1b407bc0",
         intel: "eefa0d4aae2f7899f28151cb0a94ef10a8c35068cac5321967250b859c349a51"

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
