class Cask::CLI::InternalDump < Cask::CLI::InternalUseBase
  def self.run(*arguments)
    cask_tokens = cask_tokens_from(arguments)
    raise CaskUnspecifiedError if cask_tokens.empty?
    retval = dump_casks(*cask_tokens)
    # retval is ternary: true/false/nil
    if retval.nil?
      raise CaskError.new("nothing to dump")
    elsif ! retval
      raise CaskError.new("dump incomplete")
    end
  end

  def self.dump_casks(*cask_tokens)
    Cask.debug = true            # Yuck. At the moment this is the only way to make dumps visible
    count = 0
    cask_tokens.each do |cask_token|
      begin
        cask = Cask.load(cask_token)
        count += 1
        cask.dumpcask
      rescue StandardError => e
        opoo "#{cask_token} was not found or would not load: #{e}"
      end
    end
    count == 0 ? nil : count == cask_tokens.length
  end

  def self.help
    "Dump the given Cask in YAML format"
  end
end
