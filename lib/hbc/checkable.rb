module Hbc::Checkable
  def errors
    Array(@errors)
  end

  def warnings
    Array(@warnings)
  end

  def add_error(message)
    @errors ||= []
    @errors << message
  end

  def add_warning(message)
    @warnings ||= []
    @warnings << message
  end

  def errors?
    Array(@errors).any?
  end

  def warnings?
    Array(@warnings).any?
  end

  def result
    if errors?
      "#{Tty.red.underline}failed#{Tty.reset}"
    elsif warnings?
      "#{Tty.yellow.underline}warning#{Tty.reset}"
    else
      "#{Tty.green}passed#{Tty.reset}"
    end
  end

  def summary
    summary = ["#{summary_header}: #{result}"]

    errors.each do |error|
      summary << " #{Tty.red}-#{Tty.reset} #{error}"
    end

    warnings.each do |warning|
      summary << " #{Tty.yellow}-#{Tty.reset} #{warning}"
    end

    summary.join("\n")
  end
end
