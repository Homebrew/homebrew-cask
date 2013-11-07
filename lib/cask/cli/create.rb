module Cask::CLI::Create
  def self.run(*arguments)
    raise CaskUnspecifiedError if arguments.empty?
    cask_name, *_ = *arguments
    cask_path = Cask.path(cask_name)

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
        url ''
        homepage ''
        version ''
        sha1 ''
        link ''
      end
    EOS
  end

  def self.help
    "creates a cask of the given name and opens it in an editor"
  end
end

