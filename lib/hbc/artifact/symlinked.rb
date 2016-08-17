require "hbc/artifact/relocated"

class Hbc::Artifact::Symlinked < Hbc::Artifact::Relocated
  def self.link_type_english_name
    "Symlink"
  end

  def self.english_description
    "#{artifact_english_name} #{link_type_english_name}s"
  end

  def self.islink?(path)
    path.symlink?
  end

  def link(artifact_spec)
    load_specification artifact_spec
    return unless preflight_checks(source, target)
    ohai "#{self.class.link_type_english_name}ing #{self.class.artifact_english_name} '#{source.basename}' to '#{target}'"
    create_filesystem_link(source, target)
  end

  def unlink(artifact_spec)
    load_specification artifact_spec
    return unless self.class.islink?(target)
    ohai "Removing #{self.class.artifact_english_name} #{self.class.link_type_english_name.downcase}: '#{target}'"
    target.delete
  end

  def install_phase
    @cask.artifacts[self.class.artifact_dsl_key].each(&method(:link))
  end

  def uninstall_phase
    @cask.artifacts[self.class.artifact_dsl_key].each(&method(:unlink))
  end

  def preflight_checks(source, target)
    if target.exist? && !self.class.islink?(target)
      ohai "It seems there is already #{self.class.artifact_english_article} #{self.class.artifact_english_name} at '#{target}'; not linking."
      return false
    end
    unless source.exist?
      raise Hbc::CaskError, "It seems the #{self.class.link_type_english_name.downcase} source is not there: '#{source}'"
    end
    true
  end

  def create_filesystem_link(source, target)
    Pathname.new(target).dirname.mkpath
    @command.run!("/bin/ln", args: ["-hfs", "--", source, target])
    add_altname_metadata source, target.basename.to_s
  end

  def summarize_artifact(artifact_spec)
    load_specification artifact_spec

    return unless self.class.islink?(target)

    link_description = "#{Hbc::Utils::Tty.red.underline}Broken Link#{Hbc::Utils::Tty.reset}: " unless target.exist?
    target_readlink_abv = " (#{target.readlink.abv})" if target.readlink.exist?

    "#{link_description}#{printable_target} -> #{target.readlink}#{target_readlink_abv}"
  end
end
