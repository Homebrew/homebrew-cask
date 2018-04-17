cask 'zulu' do
  version '10.1,11'
  sha256 '8888d8260cab86cba06c633d39a03b78982caff3d067c6e5bce7d28e03209b05'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}+#{version.after_comma}-jdk#{version.major}-macosx_x64.dmg",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java Standard Edition Development Kit'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  postflight do
    system_command '/bin/mv',
                   args: ['-f', '--', "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk", "/Library/Java/JavaVirtualMachines/zulu-#{version}.jdk"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu-#{version}.jdk", "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk/Contents/Home", '/Library/Java/Home'],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string JNI', "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk/Contents/Info.plist"],
                   sudo: true
  end

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            delete:  [
                       "/Library/Java/JavaVirtualMachines/zulu-#{version}.jdk",
                       "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk",
                       '/Library/Java/Home',
                     ]
end
