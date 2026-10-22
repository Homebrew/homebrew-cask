cask "unity-version-control" do
  arch arm: "arm64", intel: "x64"
  zip_arch = on_arch_conditional arm: "-arm"

  version "11.0.16.10512"
  sha256 arm:   "fd517987caffe18f0322965f2e4f63963ba5d35a2aa546c8ab74fe03d1ae1ebb",
         intel: "b06ee0f33148a01944597bf587be8d4b4986e54b573c6cf2bd527a370dd0efa5"

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
