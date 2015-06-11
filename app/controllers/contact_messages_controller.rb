class ContactMessagesController < ApplicationController
  # keine Authentifizierung fuer new, create
  http_basic_authenticate_with :name => "admin", :password => "geheim", :except => [:new, :create]
  
  # fuellen der Daten in Anzeige
  before_action :set_contact_message, only: [:show, :edit, :update, :destroy]

  # GET /contact_messages
  # GET /contact_messages.json
  def index
    @contact_messages = ContactMessage.all
  end

  # GET /contact_messages/1
  # GET /contact_messages/1.json
  def show
  end

  # GET /contact_messages/new
  def new
    @contact_message = ContactMessage.new
  end

  # GET /contact_messages/1/edit
  def edit
    # @contact_message = ContactMessage.find(params[:id]) nicht noetig wegen before_action
  end

  # POST /contact_messages
  # POST /contact_messages.json
  def create
    @contact_message = ContactMessage.new(contact_message_params)
    
    if @contact_message.save
      # zur Startseite weiterleiten: root_url -> muss in routes.rb definiert sein
      redirect_to root_url, notice: 'Thank you for the message'
    else
      render action: "new"
    end
  end

  # PATCH/PUT /contact_messages/1
  # PATCH/PUT /contact_messages/1.json
  def update
    @contact_message = ContactMessage.find(params[:id])
    if @contact_message.update_attributes(contact_message_params)
      redirect_to root_url, notice: "Upgedated!"
    else
      render edit
    end
  end

  # DELETE /contact_messages/1
  # DELETE /contact_messages/1.json
  def destroy
    @contact_message.destroy
    redirect_to root_url, notice: "Destroyed!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_message
      @contact_message = ContactMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_message_params
      params.require(:contact_message).permit(:name, :email, :message)
    end
end
