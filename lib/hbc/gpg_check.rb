class Hbc::GpgCheck
  attr_reader :available

  def initialize(cask, command=Hbc::SystemCommand)
    @command = command
    @cask = cask
    @available = @cask.gpg ? installed? : false
    @successful = nil
  end

  def installed?
    gpg_bin_path = @command.run('/usr/bin/type',
                                :args => ['-p', 'gpg'])

    gpg_bin_path.success? ? gpg_bin_path.stdout : false
  end


  def fetch_sig(force=false)
    unversioned_cask = @cask.version.is_a?(Symbol)
    cached = @cask.metadata_subdir('gpg') unless unversioned_cask

    meta_dir = cached || @cask.metadata_subdir('gpg', :now, true)
    sig_path = meta_dir.join('signature.asc')

    curl(@cask.gpg.signature, '-o', sig_path.to_s) unless cached || force

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
    sig = fetch_sig

    ohai "Verifying GPG signature for #{@cask}"
    check = @command.run('gpg', :args => ['--verify', sig, file],
                                :print_stdout => true)

    @successful = check.success?
  end
end
