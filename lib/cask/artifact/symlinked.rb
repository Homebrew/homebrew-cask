class Cask::Artifact::Symlinked < Cask::Artifact::Base
  def self.islink?(path)
    path.symlink?
  end

  def self.link_type_english_name
    'Symlink'
  end

  def create_filesystem_link(source, target)
    @command.run!('/bin/ln', :args => ['-hfs', source, target])
  end

  def link(artifact_relative_path)
    source_string, target_hash = artifact_relative_path

    sanity_check source_string, target_hash

    source = @cask.destination_path.join(source_string)
    target = Cask.send(self.class.artifact_dirmethod).join(target_hash ? target_hash[:target] : source.basename)
    return unless preflight_checks(source, target)
    ohai "#{self.class.link_type_english_name}ing #{self.class.artifact_english_name} '#{source.basename}' to '#{target}'"
    create_filesystem_link(source, target)
  end

  def unlink(artifact_relative_path)
    source_string, target_hash = artifact_relative_path

    sanity_check source_string, target_hash

    source = @cask.destination_path.join(source_string)
    target = Cask.send(self.class.artifact_dirmethod).join(target_hash ? target_hash[:target] : source.basename)
    linked_path = Cask.send(self.class.artifact_dirmethod).join(Pathname(target).basename)
    if linked_path.exist? && self.class.islink?(linked_path)
      ohai "Removing #{self.class.artifact_english_name} #{self.class.link_type_english_name.downcase}: '#{linked_path}'"
      linked_path.delete
    end
  end

  def install
    @cask.artifacts[self.class.artifact_dsl_key].each { |artifact| link(artifact) }
  end

  def uninstall
    @cask.artifacts[self.class.artifact_dsl_key].each { |artifact| unlink(artifact) }
  end

  def preflight_checks(source, target)
    if target.exist? && !self.class.islink?(target)
      ohai "It seems there is already #{self.class.artifact_english_article} #{self.class.artifact_english_name} at '#{target}'; not linking."
      return false
    end
    unless source.exist?
      raise "it seems the #{self.class.link_type_english_name.downcase} source is not there: '#{source}'"
    end
    true
  end

  private
  def sanity_check source_string, target_hash
    if source_string.empty?
      raise "Relative path's missing. Running `brew update; brew upgrade brew-cask` will likely fix it.'"
    end

    if target_hash.nil?
      return
    end

    unless  target_hash.respond_to?(:keys)
      raise "Unknown arguments. Running `brew update; brew upgrade brew-cask` will likely fix it.'"
    end

    permitted_keys = [:target]
    unknown_keys = target_hash.keys - permitted_keys
    unless unknown_keys.empty?
      raise "Unknown arguments: :#{unknown_keys.join(", :")} (ignored). Running `brew update; brew upgrade brew-cask` will likely fix it.'"
    end
  end

end
