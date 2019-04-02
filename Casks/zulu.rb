cask 'zulu' do
  version '12.1.3,12'
  sha256 '25509cbcb8c0d22bf695f7ffd302c858666789a8bf6f0de1523ae539eb56bbcc'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java Standard Edition Development Kit'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  depends_on macos: '>= :sierra'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            rmdir:   '/Library/Java/JavaVirtualMachines'
end
