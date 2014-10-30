class Cask::Artifact::Symlinked < Cask::Artifact::Base
  def self.islink?(path)
    path.symlink?
  end

  def self.link_type_english_name
    'Symlink'
  end

  def create_filesystem_link(source, target)
    Pathname.new(target).dirname.mkpath
    @command.run!('/bin/ln', :args => ['-hfs', '--', source, target])
    add_altname_metadata source, target
  end

  # Try to make the asset searchable under the target name.  Spotlight
  # respects this attribute for many filetypes, but ignores it for App
  # bundles.  Alfred 2.2 respects it even for App bundles.
  def add_altname_metadata(source, target)
    attribute = 'com.apple.metadata:kMDItemAlternateNames'
    return if source.basename.to_s.casecmp(target.basename) == 0
    odebug "Adding #{attribute} metadata"
    altnames = @command.run('/usr/bin/xattr',
                            :args => ['-p', attribute, target],
                            :print_stderr => false).stdout.sub(/\A\((.*)\)\Z/, "#{$1}")
    odebug "Existing metadata is: '#{altnames}'"
    altnames.concat(', ') if altnames.length > 0
    altnames.concat(%Q{"#{target.basename}"})
    altnames = %Q{(#{altnames})}
    @command.run!('/usr/bin/xattr',
                  :args => ['-w', attribute, altnames, target],
                  :print_stderr => false)
  end

  def summary
    {
      :english_description => "#{self.class.artifact_english_name} #{self.class.link_type_english_name}s managed by brew-cask:",

      :contents => @cask.artifacts[self.class.artifact_dsl_key].map do |artifact|
                     summarize_one_link(artifact)
                   end - [nil]
    }
  end

  attr_reader :source, :target

  def load_specification(artifact_spec)
    source_string, target_hash = artifact_spec
    raise CaskInvalidError if source_string.nil?
    @source = @cask.staged_path.join(source_string)
    if target_hash
      raise CaskInvalidError unless target_hash.respond_to?(:keys)
      target_hash.assert_valid_keys(:target)
      @target = Cask.send(self.class.artifact_dirmethod).join(target_hash[:target])
    else
      @target = Cask.send(self.class.artifact_dirmethod).join(source.basename)
    end
  end

  def link(artifact_spec)
    load_specification artifact_spec
    return unless preflight_checks(source, target)
    ohai "#{self.class.link_type_english_name}ing #{self.class.artifact_english_name} '#{source.basename}' to '#{target}'"
    create_filesystem_link(source, target)
  end

  def summarize_one_link(artifact_spec)
    load_specification artifact_spec
    if self.class.islink?(target)
      link_description = target.exist? ? '' : "#{Tty.red}Broken Link#{Tty.reset}: "
      printable_target = "'#{target}'"
      printable_target.sub!(%r{^'#{ENV['HOME']}/*}, %q{~/'})
      "#{link_description}#{printable_target} -> '#{target.readlink}'"
    end
  end

  def unlink(artifact_spec)
    load_specification artifact_spec
    if self.class.islink?(target)
      ohai "Removing #{self.class.artifact_english_name} #{self.class.link_type_english_name.downcase}: '#{target}'"
      target.delete
    end
  end

  def install_phase
    # the sort is for predictability between Ruby versions
    @cask.artifacts[self.class.artifact_dsl_key].sort.each { |artifact| link(artifact) }
  end

  def uninstall_phase
    # the sort is for predictability between Ruby versions
    @cask.artifacts[self.class.artifact_dsl_key].sort.each { |artifact| unlink(artifact) }
  end

  def preflight_checks(source, target)
    if target.exist? && !self.class.islink?(target)
      ohai "It seems there is already #{self.class.artifact_english_article} #{self.class.artifact_english_name} at '#{target}'; not linking."
      return false
    end
    unless source.exist?
      raise CaskError.new "It seems the #{self.class.link_type_english_name.downcase} source is not there: '#{source}'"
    end
    true
  end
end
