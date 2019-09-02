json.array! @messages do |message|
  json.title message.title
  json.text  message.text
end