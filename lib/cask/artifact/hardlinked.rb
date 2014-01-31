class Cask::Artifact::Hardlinked < Cask::Artifact::Symlinked
  def self.islink?(path)
    return false unless path.respond_to?(:stat)
    path.stat.nlink > 1
  end

  def self.link_type_english_name
    'Hardlink'
  end

  def create_filesystem_link(source, target)
    @command.run!('/bin/ln', :args => ['-hf', source, target])
  end
end
