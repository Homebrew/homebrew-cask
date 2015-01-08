class Hbc::GpgCheck
  attr_reader :cask, :available, :signature, :successful

  def initialize(cask, force_fetch=false, command=Hbc::SystemCommand)
    @command = command
    @cask = cask

    @available = @cask.gpg ? installed? : false
    @signature = retrieve_signature(force_fetch)
    @successful = nil
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
           when @cask.gpg.key_id  then ['--recv-keys', @cask.gpg.key_id]
           when @cask.gpg.key_url then ['--fetch-key', @cask.gpg.key_url.to_s]
           end

    @command.run!('gpg', :args => args)
  end

  def verify(file)
    import_key

    ohai "Verifying GPG signature for #{@cask}"
    check = @command.run('gpg', :args => ['--verify', @signature, file],
                                :print_stdout => true)

    @successful = check.success?
  end
end
