class Cask::CLI::Create < Cask::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise CaskUnspecifiedError if cask_tokens.empty?
    cask_token = cask_tokens.first.sub(/\.rb$/i,'')
    cask_path = Cask.path(cask_token)
    odebug "Creating Cask #{cask_token}"

    if cask_path.exist?
      raise CaskAlreadyCreatedError.new cask_token
    end

    File.open(cask_path, 'w') do |f|
      f.write template(cask_token)
    end

    exec_editor cask_path
  end

  def self.template(cask_token)
    <<-EOS.undent
      cask :v1 => '#{cask_token}' do
        version ''
        sha256 ''

        url 'https://'
        name ''
        homepage ''
        license :unknown

        app ''
      end
    EOS
  end

  def self.help
    "creates the given Cask and opens it in an editor"
  end
end
