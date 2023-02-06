require "test_helper"

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_url
    assert_response :success
  end

  test "should create invoice" do
    assert_difference("Invoice.count") do
      post invoices_url, params: { invoice: { amount_due: @invoice.amount_due, amount_paid: @invoice.amount_paid, contact: @invoice.contact, currency_code: @invoice.currency_code, date_created: @invoice.date_created, due_date: @invoice.due_date, fully_paid_on_date: @invoice.fully_paid_on_date, invoice_id: @invoice.invoice_id, invoice_number: @invoice.invoice_number, reference: @invoice.reference, status: @invoice.status, sub_total: @invoice.sub_total, total: @invoice.total, total_tax: @invoice.total_tax } }
    end

    assert_redirected_to invoice_url(Invoice.last)
  end

  test "should show invoice" do
    get invoice_url(@invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_url(@invoice)
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { amount_due: @invoice.amount_due, amount_paid: @invoice.amount_paid, contact: @invoice.contact, currency_code: @invoice.currency_code, date_created: @invoice.date_created, due_date: @invoice.due_date, fully_paid_on_date: @invoice.fully_paid_on_date, invoice_id: @invoice.invoice_id, invoice_number: @invoice.invoice_number, reference: @invoice.reference, status: @invoice.status, sub_total: @invoice.sub_total, total: @invoice.total, total_tax: @invoice.total_tax } }
    assert_redirected_to invoice_url(@invoice)
  end

  test "should destroy invoice" do
    assert_difference("Invoice.count", -1) do
      delete invoice_url(@invoice)
    end

    assert_redirected_to invoices_url
  end
end
