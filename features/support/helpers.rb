def to_element string
  return "user_name"                                   if string == "user name"
  return "user_email"                                  if string == "user email"
  return "user_phone"                                  if string == "user phone"
  return "form#new_user"                               if string == "join by email form"
  return "form#new_user"                               if string == "join by Facebook form"
  return ".thanks_for_joining"                         if string == "thanks for joining"
  return "a#join_by_email"                             if string == "join by email button"
  return "a#join_by_facebook"                          if string == "join by Facebook button"
  return ".field_with_errors label[for='user_name']"   if string == "user name field error"
  return ".field_with_errors label[for='user_email']"  if string == "user email field error"
  return ".field_with_errors label[for='user_phone']"  if string == "user phone field error"
  return ".twitter-share-button"                       if string == "Twitter share button"
  return ".facebook-share-button"                      if string == "Facebook share button"
  return ".counter"                                    if string == "the user counter"
  return "iframe.video_embed"                          if string == "the live stream"
  return "a#alert"                                     if string == "the alert button"
  return ".alert_sent"                                 if string == "the alert was sent"
  return ".users ul li"                                if string == "the guardians partial list"
  return ".users ul.full_list li"                      if string == "the guardians full list"
end

def to_link string
  return "join_by_email"              if string == "join by email button"
  return "join_by_facebook"           if string == "join by Facebook button"
  return "alert"                      if string == "the alert button"
  return "see_all_guardians"          if string == "see all guardians"
  return "alert_confirmation_button"  if string == "the alert confirmation button"
end

def wait_until
  require "timeout"
  Timeout.timeout(Capybara.default_wait_time) do
    sleep(0.1) until value = yield
    value
  end
end
