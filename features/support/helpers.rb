def to_element string
  return "user_name"                                   if string == "user name"
  return "user_email"                                  if string == "user e-mail"
  return "user_phone"                                  if string == "user phone"
  return "form#new_user"                               if string == "join by email form"
  return ".thanks_for_joining"                         if string == "thanks for joining"
  return "a#join_by_email"                             if string == "join by email button"
  return ".field_with_errors label[for='user_name']"   if string == "user name field error"
  return ".field_with_errors label[for='user_email']"  if string == "user email field error"
  return ".field_with_errors label[for='user_phone']"  if string == "user phone field error"
end
