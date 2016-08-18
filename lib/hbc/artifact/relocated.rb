require "hbc/artifact/base"

class Hbc::Artifact::Relocated < Hbc::Artifact::Base
  def summary
    {
      english_description: self.class.english_description,
      contents:            @cask.artifacts[self.class.artifact_dsl_key].map(&method(:summarize_artifact)).compact,
    }
  end

  attr_reader :source, :target

  def printable_target
    target.to_s.sub(%r{^#{ENV['HOME']}(#{File::SEPARATOR}|$)}, "~/")
  end

  ALT_NAME_ATTRIBUTE = "com.apple.metadata:kMDItemAlternateNames".freeze

  # Try to make the asset searchable under the target name.  Spotlight
  # respects this attribute for many filetypes, but ignores it for App
  # bundles. Alfred 2.2 respects it even for App bundles.
  def add_altname_metadata(file, altname)
    return if altname.casecmp(file.basename).zero?
    odebug "Adding #{ALT_NAME_ATTRIBUTE} metadata"
    altnames = @command.run("/usr/bin/xattr",
                            args:         ["-p", ALT_NAME_ATTRIBUTE, file.to_s],
                            print_stderr: false).stdout.sub(%r{\A\((.*)\)\Z}, '\1')
    odebug "Existing metadata is: '#{altnames}'"
    altnames.concat(", ") unless altnames.empty?
    altnames.concat(%Q{"#{altname}"})
    altnames = "(#{altnames})"

    # Some packges are shipped as u=rx (e.g. Bitcoin Core)
    @command.run!("/bin/chmod", args: ["--", "u=rwx", file.to_s, file.realpath.to_s])

    @command.run!("/usr/bin/xattr",
                  args:         ["-w", ALT_NAME_ATTRIBUTE, altnames, file.to_s],
                  print_stderr: false)
  end

  def load_specification(artifact_spec)
    source_string, target_hash = artifact_spec
    raise Hbc::CaskInvalidError if source_string.nil?
    @source = @cask.staged_path.join(source_string)
    if target_hash
      raise Hbc::CaskInvalidError unless target_hash.respond_to?(:keys)
      target_hash.assert_valid_keys(:target)
      @target = Hbc.send(self.class.artifact_dirmethod).join(target_hash[:target])
    else
      @target = Hbc.send(self.class.artifact_dirmethod).join(source.basename)
    end
  end
end
