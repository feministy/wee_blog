def pretty_form_tags
  names = @tags.map(&:name)
  names.join(", ")
end 