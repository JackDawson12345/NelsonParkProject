namespace :invoice do
  desc "Gets Invoices from Xero"
  task :xero_invoices do

    require 'xero-ruby'

    creds = {
      client_id: '77E9A2B5838340789AF38670671CFF2B',
      client_secret: 'zfVH5vrgagpneL02QdGQbkGe3NipLmAhLK1uCuUhD70SCmuG',
      grant_type: 'client_credentials'
    }

    xero_client = XeroRuby::ApiClient.new(credentials: creds)

    @token_set = xero_client.get_client_credentials_token
    # save @token_set

    accessToken = @token_set["access_token"]

    invoices = xero_client.accounting_api.get_invoices('').invoices

    invoices.each do |invoice|

      invoiceID = invoice.invoice_id
      invoiceNumber = invoice.invoice_number
      invoiceDate = invoice.date
      invoiceReference = invoice.reference
      invoiceStatus = invoice.status
      invoiceTotal = invoice.total
      invoiceCurrency = invoice.currency_code
      invoiceSubTotal = invoice.sub_total
      invoiceTotalTax = invoice.total_tax
      invoiceDueDate = invoice.due_date
      invoiceAmountDue = invoice.amount_due
      invoiceAmountPaid = invoice.amount_paid
      invoiceFullyPaidOnDate = invoice.fully_paid_on_date

      invoiceContact = invoice.contact
      invoiceContactID = invoiceContact.contact_id

    end

  end



end
