class Cask::GpgCheck
  attr_reader :available

  def initialize(cask, command=Cask::SystemCommand)
    @command = command
    @cask = cask
    @available = @cask.gpg ? installed? : false
  end

  def installed?
    cmd = @command.run('/usr/bin/type',
                       :args => ['-p', 'gpg'])

    # if `gpg` is found, return its absolute path
    cmd.success? ? cmd.stdout : false
  end


  def fetch_sig(force=false)
    unversioned_cask = @cask.version.is_a?(Symbol)
    cached = @cask.metadata_subdir('gpg') unless unversioned_cask

    meta_dir = cached || @cask.metadata_subdir('gpg', :now, true)
    sig_path = meta_dir.join("signature.asc")

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

    @command.run!('gpg',
                  :args => ['--verify', sig, file],
                  :print_stdout => true)
  end
end
