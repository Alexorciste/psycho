class ConsultationsController < ApplicationController
  def index
    @consultations = Consultation.where(user_id: current_user.id)
    
  end

  def new
    @consultation = Consultation.new
    @specialist = Specialist.find(params[:specialist_id])
    @category = Category.find(params[:category_id])
    
  end

  def create
    @category = Category.find(params[:category_id])
    @specialist = Specialist.find(params[:specialist_id])
    @consultation = Consultation.new(consultation_params)
    

    @consultation.specialist = @specialist

    yin = params[:consultation]["checkin(1i)"].to_i
    min = params[:consultation]["checkin(2i)"].to_i
    din = params[:consultation]["checkin(3i)"].to_i

    @consultation.checkin = Date.new(yin,min,din)
    # @consultation.hour = Time.new()


    # yout = params[:consultation]["checkout(1i)"].to_i
    # mout = params[:consultation]["checkout(2i)"].to_i
    # dout = params[:consultation]["checkout(3i)"].to_i

    # @consultation.checkout = Date.new(yout,mout,dout)

    # days = @consultation.checkout - @consultation.checkin

    # p = @specialist.price_per_night

    # @consultation.price = days * p

    @consultation.user = current_user

    if @consultation.save!
      # redirect_to consultations_path
      redirect_to  category_specialist_consultations_path(@specialist)
    else
      @consultation = Consultation.new
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
    @consultation = Consultation.find(params[:id])
    @consultation.destroy
    redirect_to consultations_path
  end

  private


  def consultation_params
    params.require(:consultation).permit(:date, :checkin, :hour)
  end
end



