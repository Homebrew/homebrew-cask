class Cask::CLI::Create < Cask::CLI::Base
  def self.run(*arguments)
    raise CaskUnspecifiedError if arguments.empty?
    cask_name = arguments.first.sub(/\.rb$/i,'')
    cask_path = Cask.path(cask_name)
    odebug "Creating Cask #{cask_name}"

    if cask_path.exist?
      raise CaskAlreadyCreatedError.new cask_name
    end

    File.open(cask_path, 'w') do |f|
      f.write template(cask_name)
    end

    exec_editor cask_path
  end

  def self.template(cask_name);
    cask_class = cask_name.split('-').map(&:capitalize).join
    <<-EOS.undent
      class #{cask_class} < Cask
        version ''
        sha256 ''

        url 'https://'
        homepage ''

        app ''
      end
    EOS
  end

  def self.help
    "creates a cask of the given name and opens it in an editor"
  end
end
