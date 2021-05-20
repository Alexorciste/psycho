class ConsultationsController < ApplicationController
  def index
    @consultations = Consultation.where(user_id: current_user.id)
    
  end

  def new
    @consultation = Consultation.new
    @category = Category.find(params[:category_id])
    @specialist = Specialist.find(params[:specialist_id])
    
    
  end

  def create
    @category = Category.find(params[:category_id])
    @specialist = Specialist.find(params[:specialist_id])
    @consultation = Consultation.new(consultation_params)
  

    @consultation.specialist = @specialist

    # yin = params[:consultation]["date(1i)"].to_i
    # min = params[:consultation]["date(2i)"].to_i
    # din = params[:consultation]["date(3i)"].to_i

    # @consultation.date = Date.new(yin,min,din)

    # yin = params[:journey]["checkin(1i)"].to_i
    # min = params[:journey]["checkin(2i)"].to_i
    # din = params[:journey]["checkin(3i)"].to_i

    # @consultation.checkin = Date.new(yin,min,din)

    # yout = params[:journey]["checkout(1i)"].to_i
    # mout = params[:journey]["checkout(2i)"].to_i
    # dout = params[:journey]["checkout(3i)"].to_i

    # @consultation.checkout = Date.new(yout,mout,dout)
    
    
    # yr = params[:consultation]["hour(1i)"].to_i
    # mo = params[:consultation]["hour(2i)"].to_i
    # dy = params[:consultation]["hour(3i)"].to_i
    # hr = params[:consultation]["hour(4i)"].to_i
    # mn = params[:consultation]["hour(5i)"].to_i
   
    # @consultation.hour = Time.new(yr,mo,dy,hr,mn).strftime("%H:%M:%S")

    # dout = params[:consultation]["checkout(3i)"].to_i

    # @consultation.checkout = Date.new(yout,mout,dout)

    # days = @consultation.checkout - @consultation.checkin

    # p = @specialist.price_per_night




    # @consultation.price = days * p

    @consultation.user = current_user
    # if @consultation.date <= Date.today 
    #   flash[:alert] = "La date de consultation doit être supérieure à celle du jour"
    #   @consultation = Consultation.new
    #   render :new 
    
    # else

      if @consultation.save! 
        # redirect_to consultations_path
        redirect_to  consultations_path
      else
        @consultation = Consultation.new
        render :new
       
      end
      
    # end 
    # && Consultation.all.exclude?(@consultation.date)==true

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
    params.require(:consultation).permit(:checkin, :checkout)
  end
end



