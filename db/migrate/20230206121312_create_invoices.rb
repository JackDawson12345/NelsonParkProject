class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :invoice_id
      t.string :invoice_number
      t.string :date_created
      t.string :reference
      t.string :status
      t.string :total
      t.string :currency_code
      t.string :sub_total
      t.string :total_tax
      t.string :due_date
      t.string :amount_due
      t.string :amount_paid
      t.string :fully_paid_on_date
      t.string :contact

      t.timestamps
    end
  end
end
