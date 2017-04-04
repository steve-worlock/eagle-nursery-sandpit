json.extract! customer, :id, :custid, :custname, :custemail, :custgmail, :created_at, :updated_at
json.url customer_url(customer, format: :json)
