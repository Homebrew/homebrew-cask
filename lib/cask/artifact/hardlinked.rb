class Cask::Artifact::Hardlinked < Cask::Artifact::Symlinked
  def self.islink?(path)
    return false unless path.respond_to?(:stat)
    path.stat.nlink > 1
  end

  def self.link_type_english_name
    'Hardlink'
  end

  def create_filesystem_link(source, target)
    @command.run!('/bin/ln', :args => ['-hf', '--', source, target])
  end

  def summarize_one_link(artifact_relative_path)
    source_string, target_hash = artifact_relative_path
    sanity_check source_string, target_hash
    source = @cask.destination_path.join(source_string)
    target = Cask.send(self.class.artifact_dirmethod).join(target_hash ? target_hash[:target] : source.basename)
    linked_path = Cask.send(self.class.artifact_dirmethod).join(Pathname(target).basename)
    if self.class.islink?(linked_path)
      printable_linked_path = "'#{linked_path}'"
      printable_linked_path.sub!(%r{^'#{ENV['HOME']}/*}, %q{~/'})
    end
  end
end
