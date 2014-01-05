class Cask::Artifact::Hardlinked < Cask::Artifact::Symlinked
  
  def islink?(path)
    return false unless path.respond_to?(:stat)
    path.stat.nlink > 1
  end

  def link_action(source, target)
    File.link(source, target)
  end

  def unlink_action(target)
    FileUtils.rm_rf target
  end

  def link_name
    'hardlink'
  end
end
