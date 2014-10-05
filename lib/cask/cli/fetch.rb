class Cask::CLI::Fetch < Cask::CLI::Base
  def self.run(*args)
    cask_names = cask_names_from(args)
    raise CaskUnspecifiedError if cask_names.empty?
    force = args.include? '--force'

    cask_names.each do |cask_name|
      ohai "Fetching resources for Cask #{cask_name}"
      cask = Cask.load(cask_name)
      @downloaded_path = Cask::Download.new(cask).perform force
      ohai "Success! Downloaded to -> #{@downloaded_path}"
    end
  end

  def self.help
    "downloads Cask resources to local cache"
  end
end
