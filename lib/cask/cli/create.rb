class Cask::CLI::Create < Cask::CLI::Base
  def self.run(*args)
    cask_names = cask_names_from(args)
    raise CaskUnspecifiedError if cask_names.empty?
    cask_name = cask_names.first.sub(/\.rb$/i,'')
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
    <<-EOS.undent
      cask :v1 => '#{cask_name}' do
        version ''
        sha256 ''

        url 'https://'
        homepage ''
        license :unknown

        app ''
      end
    EOS
  end

  def self.help
    "creates a Cask of the given name and opens it in an editor"
  end
end
