class Cask::Artifact::Hardlinked < Cask::Artifact::Symlinked
  def self.islink?(path)
    return false unless path.respond_to?(:stat)
    path.stat.nlink > 1
  end

  def self.link_type_english_name
    'Hardlink'
  end

  def create_filesystem_link(source, target)
    Pathname.new(target).dirname.mkpath
    @command.run!('/bin/ln', :args => ['-hf', '--', source, target])
  end

  def summarize_one_link(artifact_spec)
    load_specification artifact_spec
    if self.class.islink?(target)
      printable_target = "'#{target}'"
      printable_target.sub!(%r{^'#{ENV['HOME']}/*}, %q{~/'})
    end
  end
end
