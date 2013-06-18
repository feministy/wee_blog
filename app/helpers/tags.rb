def pretty_form_tags(tags)
  names = tags.map(&:sanitized_name)
  names.join(", ")
end 