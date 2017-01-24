cask 'zulu' do
  version '1.8.0_112,8.19.0.1'
  sha256 'fdb3cd4a90bad536cb38db0688ab18b640fc975c9b8b72b59fbf57eb477b838d'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.minor}.#{version.patch}.#{version.before_comma.sub(%r{.*_}, '')}-macosx_x64.dmg",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java Standard Edition Development Kit'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  conflicts_with cask: 'java'

  pkg "Double-Click to Install Zulu #{version.minor}.pkg"

  postflight do
    system_command '/bin/mv',
                   args: ['-f', '--', "/Library/Java/JavaVirtualMachines/zulu-#{version.minor}.jdk", "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk", "/Library/Java/JavaVirtualMachines/zulu-#{version.minor}.jdk"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk/Contents/Home", '/Library/Java/Home'],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string JNI', "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true

    if MacOS.version <= :mavericks
      system_command '/bin/rm',
                     args: ['-rf', '--', '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'],
                     sudo: true
      system_command '/bin/ln',
                     args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk/Contents", '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'],
                     sudo: true
    end
  end

  uninstall pkgutil: [
                       "com.azulsystems.zulu.#{version.minor}",
                     ],
            delete:  [
                       "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk",
                       "/Library/Java/JavaVirtualMachines/zulu-#{version.minor}.jdk",
                       '/Library/Java/Home',
                       if MacOS.version <= :mavericks
                         [
                           '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK',
                         ]
                       end,
                     ].keep_if { |v| !v.nil? }

  caveats <<-EOS.undent
    If this cask is upgraded, previous stale versions will be left under
    'Caskroom/zulu/{version}'. Stale versions may also be left under
    '/Library/Java/JavaVirtualMachines/zulu{version}.jdk'. Removing them may
    require manual deletion, e.g.

      rm -rf /opt/homebrew-cask/Caskroom/zulu/
      rm -rf /Library/Java/JavaVirtualMachines/zulu*.jdk
  EOS
end
