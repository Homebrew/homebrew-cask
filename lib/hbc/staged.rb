module Hbc::Staged
  def info_plist_file(index = 0)
    index =  0 if index == :first
    index =  1 if index == :second
    index = -1 if index == :last
    Hbc.appdir.join(@cask.artifacts[:app].to_a.at(index).first, "Contents", "Info.plist")
  end

  def plist_exec(cmd)
    @command.run!("/usr/libexec/PlistBuddy", args: ["-c", cmd, info_plist_file])
  end

  def plist_set(key, value)
    plist_exec("Set #{key} #{value}")
  rescue StandardError => e
    raise Hbc::CaskError, "#{@cask.token}: 'plist_set' failed with: #{e}"
  end

  def bundle_identifier
    plist_exec("Print CFBundleIdentifier").stdout.chomp
  rescue StandardError => e
    raise Hbc::CaskError, "#{@cask.token}: 'bundle_identifier' failed with: #{e}"
  end

  def set_permissions(paths, permissions_str)
    full_paths = remove_nonexistent(paths)
    return if full_paths.empty?
    @command.run!("/bin/chmod", args: ["-R", "--", permissions_str] + full_paths,
                                sudo: true)
  end

  def set_ownership(paths, user: current_user, group: "staff")
    full_paths = remove_nonexistent(paths)
    return if full_paths.empty?
    @command.run!("/usr/sbin/chown", args: ["-R", "--", "#{user}:#{group}"] + full_paths,
                                     sudo: true)
  end

  def current_user
    Hbc::Utils.current_user
  end

  private

  def remove_nonexistent(paths)
    Array(paths).map { |p| Pathname(p).expand_path }.select(&:exist?)
  end
end
