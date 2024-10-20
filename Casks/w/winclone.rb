cask "winclone" do
  version "10.4"
  sha256 "5ee2c0fe9389d1523a2a2d1a22b771250c2888d84710603f87dbaa5f92764742"

  url "https://twocanoes-software-updates.s3.amazonaws.com/Winclone#{version.major}.dmg",
      verified: "twocanoes-software-updates.s3.amazonaws.com/"
  name "Winclone"
  desc "Boot Camp cloning and backup solution"
  homepage "https://twocanoes.com/products/mac/winclone"

  livecheck do
    url "https://twocanoes-software-updates.s3.amazonaws.com/winclone#{version.major}-software-updates.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  pkg "Winclone.pkg"

  uninstall signal:  ["TERM", "com.twocanoes.Winclone#{version.major}"],
            script:  {
              executable:   "/usr/sbin/installer",
              args:         ["-pkg", "#{staged_path}/Uninstaller/Uninstall Winclone.pkg", "-target", "/"],
              sudo:         true,
              must_succeed: false,
            },
            pkgutil: "com.twocanoes.pkg.Winclone*"

  zap trash: [
    "~/Library/Application Support/Winclone",
    "~/Library/Caches/com.twocanoes.Winclone#{version.major}",
    "~/Library/Logs/Winclone",
  ]
end
