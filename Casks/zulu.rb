cask 'zulu' do
  version '1.8.0_72,8.13.0.5'
  sha256 '1e6ab8b4660ad50248d5e1c9568566bb2d6206788d4ff913d6539b47520da0ac'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.minor}.#{version.patch}.#{version.before_comma.sub(%r{.*_}, '')}-macosx_x64.dmg",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java Standard Edition Development Kit'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  conflicts_with cask: 'java'

  pkg "Double-Click to Install Zulu #{version.minor}.pkg"

  postflight do
    system '/usr/bin/sudo', '-E', '--',
           '/bin/mv', '-f', '--', "/Library/Java/JavaVirtualMachines/zulu-#{version.minor}.jdk", "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk"
    system '/usr/bin/sudo', '-E', '--',
           '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk", "/Library/Java/JavaVirtualMachines/zulu-#{version.minor}.jdk"
    system '/usr/bin/sudo', '-E', '--',
           '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk/Contents/Home", '/Library/Java/Home'
    if MacOS.version <= :mavericks
      system '/usr/bin/sudo', '-E', '--',
             '/bin/rm', '-rf', '--', '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'
      system '/usr/bin/sudo', '-E', '--',
             '/bin/ln', '-nsf', '--', "/Library/Java/JavaVirtualMachines/zulu#{version.before_comma}.jdk/Contents", '/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK'
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
