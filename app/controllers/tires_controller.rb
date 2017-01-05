class TiresController < ApplicationController
  def new
    @tire = Tire.new
  end

  def create
    @vendor = Vendor.find(params[:vendor_id])
    @tire = @vendor.tires.create(tire_params)
      redirect_to vendor_path(@vendor)

  end

  def edit
    @vendor = Vendor.find(params[:vendor_id])
    @tire = @vendor.tires.find(params[:id])
  end

  def update
    @vendor = Vendor.find(params[:vendor_id])
    @tire = @vendor.tires.find(params[:id])

    if @tire.update(tire_params)
      redirect_to vendor_path(@vendor)
    else
      render 'edit'
    end
  end

  def destroy
    @vendor = Vendor.find(params[:vendor_id])
    @tire = @vendor.tires.find(params[:id])
    @tire.destroy
    redirect_to vendor_path(@vendor)
  end

  def show
    @tire = Tire.find(params[:id])
  end


  private
  def tire_params
    params.require(:tire).permit(:model, :brand, :price, :quantity)
  end

end