require "application_system_test_case"

class InvoicesTest < ApplicationSystemTestCase
  setup do
    @invoice = invoices(:one)
  end

  test "visiting the index" do
    visit invoices_url
    assert_selector "h1", text: "Invoices"
  end

  test "should create invoice" do
    visit invoices_url
    click_on "New invoice"

    fill_in "Amount due", with: @invoice.amount_due
    fill_in "Amount paid", with: @invoice.amount_paid
    fill_in "Contact", with: @invoice.contact
    fill_in "Currency code", with: @invoice.currency_code
    fill_in "Date created", with: @invoice.date_created
    fill_in "Due date", with: @invoice.due_date
    fill_in "Fully paid on date", with: @invoice.fully_paid_on_date
    fill_in "Invoice", with: @invoice.invoice_id
    fill_in "Invoice number", with: @invoice.invoice_number
    fill_in "Reference", with: @invoice.reference
    fill_in "Status", with: @invoice.status
    fill_in "Sub total", with: @invoice.sub_total
    fill_in "Total", with: @invoice.total
    fill_in "Total tax", with: @invoice.total_tax
    click_on "Create Invoice"

    assert_text "Invoice was successfully created"
    click_on "Back"
  end

  test "should update Invoice" do
    visit invoice_url(@invoice)
    click_on "Edit this invoice", match: :first

    fill_in "Amount due", with: @invoice.amount_due
    fill_in "Amount paid", with: @invoice.amount_paid
    fill_in "Contact", with: @invoice.contact
    fill_in "Currency code", with: @invoice.currency_code
    fill_in "Date created", with: @invoice.date_created
    fill_in "Due date", with: @invoice.due_date
    fill_in "Fully paid on date", with: @invoice.fully_paid_on_date
    fill_in "Invoice", with: @invoice.invoice_id
    fill_in "Invoice number", with: @invoice.invoice_number
    fill_in "Reference", with: @invoice.reference
    fill_in "Status", with: @invoice.status
    fill_in "Sub total", with: @invoice.sub_total
    fill_in "Total", with: @invoice.total
    fill_in "Total tax", with: @invoice.total_tax
    click_on "Update Invoice"

    assert_text "Invoice was successfully updated"
    click_on "Back"
  end

  test "should destroy Invoice" do
    visit invoice_url(@invoice)
    click_on "Destroy this invoice", match: :first

    assert_text "Invoice was successfully destroyed"
  end
end
