require "hbc/artifact/linked"

class Hbc::Artifact::Symlinked < Hbc::Artifact::Linked
  def self.islink?(path)
    path.symlink?
  end

  def self.link_type_english_name
    "Symlink"
  end

  def create_filesystem_link(source, target)
    Pathname.new(target).dirname.mkpath
    @command.run!("/bin/ln", args: ["-hfs", "--", source, target])
    add_altname_metadata source, target.basename.to_s
  end

  def summarize_one_link(artifact_spec)
    load_specification artifact_spec
    return unless self.class.islink?(target)
    link_description = target.exist? ? "" : "#{Hbc::Utils::Tty.red.underline}Broken Link#{Hbc::Utils::Tty.reset}: "
    printable_target = "'#{target}'".sub(%r{^'#{ENV['HOME']}/*}, "~/'")
    "#{link_description}#{printable_target} -> '#{target.readlink}'"
  end
end
