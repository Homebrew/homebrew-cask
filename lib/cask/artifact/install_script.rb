class Cask::Artifact::InstallScript < Cask::Artifact::Base

  # todo: for backward compatibility, removeme
  def install
    install_phase
  end

  # todo: for backward compatibility, removeme
  def uninstall
    uninstall_phase
  end

  def install_phase
    @cask.artifacts[self.class.artifact_dsl_key].each do |artifact|
      executable, script_arguments = self.class.read_script_arguments(
                                                                      artifact,
                                                                      "#{self.class.artifact_dsl_key}",
                                                                      {:must_succeed => true},
                                                                      {:print => true}
                                                                      )
      ohai "Running #{self.class.artifact_dsl_key} script #{executable}"
      raise CaskInvalidError.new(@cask, "#{self.class.artifact_dsl_key} missing executable") if executable.nil?
      @command.run(@cask.destination_path.join(executable), script_arguments)
    end
  end

  def uninstall_phase
    odebug "Nothing to do. The #{self.class.artifact_dsl_key} artifact has no uninstall phase."
  end
end
