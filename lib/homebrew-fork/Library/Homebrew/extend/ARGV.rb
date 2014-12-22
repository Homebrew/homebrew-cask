module HomebrewForkArgvExtension
  def verbose?
    flag? '--verbose' or !ENV['VERBOSE'].nil? or !ENV['HOMEBREW_VERBOSE'].nil?
  end

  def flag? flag
    options_only.include?(flag)
  end

  def options_only
    select { |arg| arg.match('^-') }
  end
end
