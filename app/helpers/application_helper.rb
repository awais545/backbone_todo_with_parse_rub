module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | BackboneWithRails"      
    end
  end
end
