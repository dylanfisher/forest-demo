class DividerBlock < BaseBlock
  def self.permitted_params
    []
  end

  def self.display_name
    'Divider Block'
  end

  def self.description
    'Create a horizontal divider between blocks.'
  end

  def self.display_icon_name
    'hr'
  end
end
