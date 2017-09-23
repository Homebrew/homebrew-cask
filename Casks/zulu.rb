cask 'zulu' do
  version '9.0.0.15'
  sha256 '90bc8fc8d76a5e62a02beeb94d933b70c4ecca8397534db09155c752d41ae734'

  url "https://cdn.azul.com/zulu/bin/zulu#{version}-jdk#{version.major}.#{version.minor}.#{version.patch}-macosx_x64.dmg",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java Standard Edition Development Kit'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  conflicts_with cask: 'java'

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

    if MacOS.version <= :mavericks
      system_command '/bin/rm',
                     args: ['-rf', '--', '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'],
                     sudo: true
      system_command '/bin/ln',
                     args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk/Contents", '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'],
                     sudo: true
    end
  end

  uninstall pkgutil: [
                       "com.azulsystems.zulu.#{version.major}",
                     ],
            delete:  [
                       "/Library/Java/JavaVirtualMachines/zulu-#{version}.jdk",
                       "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk",
                       '/Library/Java/Home',
                       if MacOS.version <= :mavericks
                         [
                           '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK',
                         ]
                       end,
                     ].keep_if { |v| !v.nil? }
end
