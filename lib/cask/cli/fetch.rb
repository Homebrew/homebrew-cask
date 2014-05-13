class Cask::CLI::Fetch
  def self.run(*args)
    raise CaskUnspecifiedError if args.empty?
    cask_names = args.reject { |a| a.chars.first == '-' }
    force = args.include? '--force'

    cask_names.each do |cask_name|
      ohai "Fetching resources for Cask #{cask_name}"
      cask = Cask.load(cask_name)
      @downloaded_path = Cask::Download.new(cask).perform(force)
      @downloaded_path.each do |path|
        ohai "Success! Downloaded to -> #{path}"
      end
    end
  end

  def self.help
    "downloads Cask resources to local cache"
  end
end
