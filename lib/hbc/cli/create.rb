class Hbc::CLI::Create < Hbc::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise Hbc::CaskUnspecifiedError if cask_tokens.empty?
    cask_token = cask_tokens.first.sub(/\.rb$/i,'')
    cask_path = Hbc.path(cask_token)
    odebug "Creating Cask #{cask_token}"

    if cask_path.exist?
      raise Hbc::CaskAlreadyCreatedError.new cask_token
    end

    File.open(cask_path, 'w') do |f|
      f.write template(cask_token)
    end

    exec_editor cask_path
  end

  # for mocking
  # todo: add an :exec parameter to SystemCommand
  def self.exec_editor(*args)
    Hbc::Utils.exec_editor(*args)
  end

  def self.template(cask_token)
    <<-EOS.undent
      cask '#{cask_token}' do
        version ''
        sha256 ''

        url 'https://'
        name ''
        homepage ''
        license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

        app ''
      end
    EOS
  end

  def self.help
    "creates the given Cask and opens it in an editor"
  end
end
