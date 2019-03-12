json.array! @sessions.each do |session|
  json.partial! "session.json.jbuilder", session: session
end