json.extract! transaction, :id, :custref, :tranref, :trandate, :tranamount, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
