require "hbc/artifact/base"

class Hbc::Artifact::Installer < Hbc::Artifact::Base
  # TODO: for backward compatibility, removeme
  def install
    install_phase
  end

  # TODO: for backward compatibility, removeme
  def uninstall
    uninstall_phase
  end

  def install_phase
    @cask.artifacts[self.class.artifact_dsl_key].each do |artifact|
      if artifact.manual
        puts <<-EOS.undent
          To complete the installation of Cask #{@cask}, you must also
          run the installer at

            '#{@cask.staged_path.join(artifact.manual)}'

        EOS
      else
        executable, script_arguments = self.class.read_script_arguments(artifact.script,
                                                                        self.class.artifact_dsl_key.to_s,
                                                                        { must_succeed: true, sudo: true },
                                                                        print_stdout: true)
        ohai "Running #{self.class.artifact_dsl_key} script #{executable}"
        raise Hbc::CaskInvalidError.new(@cask, "#{self.class.artifact_dsl_key} missing executable") if executable.nil?
        executable_path = @cask.staged_path.join(executable)
        @command.run("/bin/chmod", args: ["--", "+x", executable_path]) if File.exist?(executable_path)
        @command.run(executable_path, script_arguments)
      end
    end
  end

  def uninstall_phase
    odebug "Nothing to do. The #{self.class.artifact_dsl_key} artifact has no uninstall phase."
  end
end
