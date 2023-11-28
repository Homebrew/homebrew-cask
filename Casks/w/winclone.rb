cask "winclone" do
  version "10.3"
  sha256 "907ffff3da10c2b6cdf32276001e581966e457b6eb4fc383055b1c015c8b8329"

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

  uninstall_preflight do
    system_command "/usr/sbin/installer",
                   args:         ["-pkg", "#{staged_path}/Uninstaller/Uninstall Winclone.pkg", "-target", "/"],
                   sudo:         true,
                   sudo_as_root: true
  end

  uninstall signal:  ["TERM", "com.twocanoes.Winclone#{version.major}"],
            pkgutil: "com.twocanoes.pkg.Winclone*"

  zap trash: [
    "~/Library/Application Support/Winclone",
    "~/Library/Caches/com.twocanoes.Winclone#{version.major}",
    "~/Library/Logs/Winclone",
  ]
end
