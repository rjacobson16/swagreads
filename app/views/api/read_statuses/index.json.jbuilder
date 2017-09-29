@read_statuses.each do |read_status|
  json.set! read_status.id do
    json.partial! 'read_status', read_status: read_status
  end
end
