class Cask::CLI::Alfred
  def self.run(*args)
    subcommand = args.first

    if args.length > 1 && args.last.is_a?(Class)
      @system_command = args.last
    else
      @system_command = Cask::SystemCommand
    end

    case subcommand
    when "link" then link
    when "unlink" then unlink
    when "status" then status
    else
      alfred_help
    end
  end

  def self.alfred_help
    ohai 'brew cask alfred', <<-ALFREDHELP.undent
      manages integration with Alfred; allows applications installed with
      homebrew cask to be launched by Alfred by adding the Caskroom to Alfreds
      search paths

      subcommands:
        status - reports whether Alfred is linked
        link   - adds Caskroom to alfred search paths
        link   - removes Cakroom from Alfred search paths
    ALFREDHELP
  end

  def self.link
    if !alfred_installed?
      opoo "Could not find any Alfred scopes, Alfred is probably not installed."
    elsif linked?
      opoo "Alfred is already linked to homebrew-cask."
    else
      save_alfred_scopes(alfred_scopes << Cask.caskroom)
      ohai "Successfully linked Alfred to homebrew-cask."
    end
  end

  def self.unlink
    if !alfred_installed?
      opoo "Could not find any Alfred scopes, Alfred is probably not installed."
    elsif !linked?
      opoo "Alfred is already unlinked from homebrew-cask."
    else
      save_alfred_scopes(alfred_scopes.reject { |x| x == Cask.caskroom.to_s })
      ohai "Successfully unlinked Alfred from homebrew-cask."
    end
  end

  def self.status
    if !alfred_installed?
      opoo "Could not find any Alfred scopes, Alfred is probably not installed."
    elsif linked?
      ohai "Alfred is happily linked to homebrew-cask!"
    else
      ohai "Alfred is not linked to homebrew-cask."
    end
  end

  def self.help
    "used to modify Alfred's scope to include the Caskroom"
  end

  def self.save_alfred_scopes(scopes)
    scopes_arg = "(#{scopes.join(",")})"
    @system_command.run("defaults write com.alfredapp.Alfred scope.paths '#{scopes_arg}'")
  end

  def self.alfred_installed?
    !alfred_scopes.empty?
  end

  def self.linked?
    alfred_scopes.include?(Cask.caskroom.to_s)
  end

  # output looks like this:
  # (
  #   "/some/path",
  #   "/other/path"
  # )
  #
  # and we would like %w[/some/path /other/path]
  SCOPE_REGEXP = /^\s*"(.*)",?$/
  
  def self.alfred_scopes
    alfred_preference("scope.paths").map do |line|
      matchdata = line.match(SCOPE_REGEXP)
      matchdata ? matchdata.captures.first : nil
    end.compact
  end

  def self.alfred_preference(key)
    @system_command.run("defaults read com.alfredapp.Alfred #{key}")
  end
end
