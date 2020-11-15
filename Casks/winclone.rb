cask "winclone" do
  version "9.0"
  sha256 "9326ff03d0a386da89389b9c500cd2b6b2331784d0ffc8f89d735c7780a9c19b"

  # twocanoes-software-updates.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://twocanoes-software-updates.s3.amazonaws.com/Winclone#{version.major}.dmg"
  appcast "https://twocanoes.com/winclone/updates/winclone#{version.major}-software-updates.xml"
  name "Winclone"
  desc "Boot Camp cloning and backup solution"
  homepage "https://twocanoes.com/products/mac/winclone"

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
