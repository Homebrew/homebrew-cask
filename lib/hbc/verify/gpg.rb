class Hbc::Verify::Gpg
  def self.me?(cask)
    cask.gpg
  end

  attr_reader :cask, :downloaded_path

  def initialize(cask, downloaded_path, command=Hbc::SystemCommand)
    @command = command
    @cask = cask
    @downloaded_path = downloaded_path
  end

  def available?
    return @available unless @available.nil?
    @available = self.class.me?(cask) && installed?
  end

  def installed?
    cmd = @command.run('/usr/bin/type',
                       :args => ['-p', 'gpg'])

    # if `gpg` is found, return its absolute path
    cmd.success? ? cmd.stdout : false
  end


  def fetch_sig(force=false)
    unversioned_cask = cask.version.is_a?(Symbol)
    cached = cask.metadata_subdir('gpg') unless unversioned_cask

    meta_dir = cached || cask.metadata_subdir('gpg', :now, true)
    sig_path = meta_dir.join("signature.asc")

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
    sig = fetch_sig

    ohai "Verifying GPG signature for #{cask}"

    @command.run!('gpg',
                  :args => ['--verify', sig, downloaded_path],
                  :print_stdout => true)
  end
end
