class Cask::Artifact::Service < Cask::Artifact::Base
  def self.me?(cask)
    cask.artifacts[:service].any?
  end

  def install
    @cask.artifacts[:service].each { |service| link(service) }
  end

  def uninstall
    @cask.artifacts[:service].each { |service| unlink(service) }
  end

  def link(service_relative_path)
    source = @cask.destination_path.join(service_relative_path)
    target = Cask.servicedir.join(source.basename)

    return unless preflight_checks(source, target)
    ohai "Linking service #{source.basename} to #{target}"
    @command.run!('/bin/ln', :args => ['-hfs', source, target])
  end

  def preflight_checks(source, target)
    if target.exist? && !target.symlink?
      ohai "It seems there is already a service at #{target}; not linking."
      false
    end
    unless source.exist?
      raise "it seems the symlink source is not there: #{source}"
    end
    true
  end

  def unlink(service_relative_path)
    linked_path = Cask.servicedir.join(Pathname(service_relative_path).basename)
    if linked_path.exist? && linked_path.symlink?
      ohai "Removing service link: #{linked_path}"
      linked_path.delete
    end
  end
end
