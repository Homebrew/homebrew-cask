module Cask::Staged
  def info_plist_file(index = 0)
    index =  0 if index == :first
    index =  1 if index == :second
    index = -1 if index == :last
    @cask.staged_path.join(@cask.artifacts[:app].to_a.at(index).first, 'Contents', 'Info.plist')
  end

  def plist_exec(cmd)
    @command.run!('/usr/libexec/PlistBuddy', :args => ['-c', cmd, info_plist_file])
  end

  def plist_set(key, value)
    plist_exec("Set #{key} #{value}")
  end

  def bundle_identifier
    plist_exec('Print CFBundleIdentifier').stdout.chomp
  end
end
