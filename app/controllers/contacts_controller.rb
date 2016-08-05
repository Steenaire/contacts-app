class ContactsController < ApplicationController

  def index
    if current_user
      @contacts = Contact.where(user_id: current_user.id)
    else
      flash[:danger] = "Log In To See Contacts"
      redirect_to "/login"
    end
  end

  def all_johns
    @contacts = Contact.all
  end

  def new
  end

  def create
    contact = Contact.new

    contact.first_name = params[:first_name]
    contact.last_name = params[:last_name]
    contact.middle_name = params[:middle_name]
    contact.phone_number = params[:phone_number]
    contact.email = params[:email]
    contact.user_id =  current_user.id
    contact.address = params[:address]

    city = Geocoder.search(params[:address])
    contact.latitude = city[0].latitude
    contact.longitude = city[0].longitude

    contact.save

    flash[:success] = "Contact Created!"

    redirect_to "/"
  end

  def update
    @id = params[:id]

    contact = Contact.find(params[:id])

    contact.first_name = params[:first_name]
    contact.last_name = params[:last_name]
    contact.middle_name = params[:middle_name]
    contact.phone_number = params[:phone_number]
    contact.email = params[:email]
    product.save

    flash[:success] = "Contact Updated!"

    redirect_to "/products/"
  end

  def edit
    @id = params[:id]
    @contact = Contact.find(@id)
  end

  def show
    @contact = Contact.find(params[:id])
  end

end
