cask "winclone" do
  version "9.1,48423"
  sha256 "c831b331cceab9ec8b85a778f919965391faa417bcbfe2d048a97166a3764cf0"

  url "https://twocanoes-software-updates.s3.amazonaws.com/Winclone#{version.major}.dmg",
      verified: "twocanoes-software-updates.s3.amazonaws.com/"
  name "Winclone"
  desc "Boot Camp cloning and backup solution"
  homepage "https://twocanoes.com/products/mac/winclone"

  livecheck do
    url "https://twocanoes.com/winclone/updates/winclone#{version.major}-software-updates.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  pkg "Winclone.pkg"

  uninstall_preflight do
    system_command "/usr/sbin/installer",
                   args: [
                     "-pkg", "#{staged_path}/Uninstaller/Uninstall Winclone.pkg",
                     "-target", "/"
                   ],
                   sudo: true
  end

  uninstall signal:  [["TERM", "com.twocanoes.Winclone#{version.major}"]],
            pkgutil: "com.twocanoes.pkg.Winclone*"

  zap trash: [
    "~/Library/Application Support/Winclone",
    "~/Library/Caches/com.twocanoes.Winclone#{version.major}",
    "~/Library/Logs/Winclone",
  ]
end
