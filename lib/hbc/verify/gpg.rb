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
    maybe_dir = @cask.metadata_subdir('gpg')
    versioned_cask = @cask.version.is_a?(String)

    # maybe_dir may be:
    # - nil, in the absence of a parent metadata directory;
    # - the path to a non-existent /gpg subdir of the metadata directory,
    #   if the most recent metadata directory was not created by GpgCheck;
    # - the path to an existing /gpg subdir, where a signature was previously
    #   saved.
    cached = maybe_dir if versioned_cask && maybe_dir && maybe_dir.exist?

    meta_dir = cached || @cask.metadata_subdir('gpg', :now, true)
    sig_path = meta_dir.join('signature.asc')

    curl(@cask.gpg.signature, '-o', sig_path) if !cached || !sig_path.exist? || force

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
