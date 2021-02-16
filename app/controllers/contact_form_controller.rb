

 # app/controllers/contact_forms.rb
  class ContactFormsController < ApplicationController

    def new
      @contact_form = ContactForms.new
    end

    def create
      begin
        @contact_form = ContactForms.new(params[:contact_form])
        @contact_form.request = request
        if @contact_form.deliver
          flash.now[:notice] = 'Thank you for your message!'
        else
          render :new
        end
      rescue ScriptError
        flash[:error] = 'Sorry, this message appears to be spam and was not delivered.'
      end
    end
  end

  class ContactFormsController
  module SomeConcern
  end
end