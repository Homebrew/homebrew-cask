class Hbc::CLI::Fetch < Hbc::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise Hbc::CaskUnspecifiedError if cask_tokens.empty?
    force = args.include? '--force'

    cask_tokens.each do |cask_token|
      ohai "Fetching resources for Cask #{cask_token}"
      cask = Hbc.load(cask_token)
      @downloaded_path = Hbc::Download.new(cask).perform force
      ohai "Success! Downloaded to -> #{@downloaded_path}"
    end
  end

  def self.help
    "downloads Cask resources to local cache"
  end
end
