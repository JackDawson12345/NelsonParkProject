json.extract! invoice, :id, :invoice_id, :invoice_number, :date_created, :reference, :status, :total, :currency_code, :sub_total, :total_tax, :due_date, :amount_due, :amount_paid, :fully_paid_on_date, :contact, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
