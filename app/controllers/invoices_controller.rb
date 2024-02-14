class InvoicesController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        result = InvoiceService.getAllInvoice
        render json: result
    end

    def invoices_by_date
        result = InvoiceService.getInvoiceByDate(params)
        render json: result
    end

    private

    def invoice_params
        params.require(:invoice).permit(:invoice_number,  :total, :invoice_date, :status)
    end
end