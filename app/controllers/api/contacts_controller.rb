class Api::ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
    render 'many_contacts.json.jbuilder'
  end

  def show
    @contact = Contact.first
    render 'contacts.json.jbuilder'
  end
end
