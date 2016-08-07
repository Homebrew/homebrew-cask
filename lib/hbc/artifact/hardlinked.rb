require "hbc/artifact/linked"

class Hbc::Artifact::Hardlinked < Hbc::Artifact::Linked
  def self.link_type_english_name
    "Hardlink"
  end

  def self.islink?(path)
    return false unless path.respond_to?(:stat)
    path.stat.nlink > 1
  end

  def create_filesystem_link(source, target)
    Pathname.new(target).dirname.mkpath
    @command.run!("/bin/ln", args: ["-hf", "--", source, target])
    add_altname_metadata source, target.basename.to_s
  end

  def summarize_one_link(artifact_spec)
    load_specification artifact_spec
    return unless self.class.islink?(target)
    "'#{target}'".sub(%r{^'#{ENV['HOME']}/*}, "~/'")
  end
end
