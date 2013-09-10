def to_element string
  return "user_name"            if string == "user name"
  return "user_email"           if string == "user e-mail"
  return "user_phone"           if string == "user phone"
  return "form#new_user"        if string == "join by email form"
  return ".thanks_for_joining"  if string == "thanks for joining"
  return "a#join_by_email"       if string == "join by email button"
  raise "I don't know element '#{string}'"
end
