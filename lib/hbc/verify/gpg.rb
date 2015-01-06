class Hbc::Verify::Gpg
  def self.me?(cask)
    cask.gpg
  end

  attr_reader :cask, :downloaded_path, :signature, :successful

  def initialize(cask, downloaded_path, force_fetch=false, command=Hbc::SystemCommand)
    @command = command
    @cask = cask
    @downloaded_path = downloaded_path
    @signature = retrieve_signature(force_fetch)
    @successful = nil
  end

  def available?
    return @available unless @available.nil?
    @available = self.class.me?(cask) && installed?
  end

  def installed?
    gpg_bin_path = @command.run('/usr/bin/type',
                                :args => ['-p', 'gpg'])

    gpg_bin_path.success? ? gpg_bin_path.stdout : false
  end

  def retrieve_signature(force=false)
    unversioned_cask = cask.version.is_a?(Symbol)
    cached = cask.metadata_subdir('gpg') unless unversioned_cask

    meta_dir = cached || cask.metadata_subdir('gpg', :now, true)
    sig_path = meta_dir.join('signature.asc')

    curl(cask.gpg.signature, '-o', sig_path.to_s) unless cached || force

    sig_path
  end

  def import_key
    args = case
           when cask.gpg.key_id  then ['--recv-keys', cask.gpg.key_id]
           when cask.gpg.key_url then ['--fetch-key', cask.gpg.key_url.to_s]
           end

    @command.run!('gpg', :args => args)
  end

  def verify
    return unless available?
    import_key

    ohai "Verifying GPG signature for #{@cask}"
    check = @command.run('gpg', :args => ['--verify', @signature, downloaded_path],
                                :print_stdout => true)

    @successful = check.success?
  end
end
