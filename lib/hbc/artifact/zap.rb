class Hbc::Artifact::Zap < Hbc::Artifact::UninstallBase
  def install_phase
    odebug "Nothing to do. The zap artifact has no install phase."
  end

  def uninstall_phase
    odebug "Nothing to do. The zap artifact has no uninstall phase."
  end

  def zap_phase
    expand_tilde = true
    dispatch_uninstall_directives(expand_tilde)
  end
end
