class Cask::Artifact::Zap < Cask::Artifact::UninstallBase
  def install_phase
    odebug "Nothing to do. The zap artifact has no install phase."
  end

  def uninstall_phase
    odebug "Nothing to do. The zap artifact has no uninstall phase."
  end

  def zap_phase
    expand_tilde = true
    dispatch_uninstall_directives(self.class.artifact_dsl_key, expand_tilde)
  end
end
