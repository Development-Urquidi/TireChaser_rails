class VendorsController < ApplicationController
  before_filter :disable_layout, only: [:order_rate, :order_price]

  http_basic_authenticate_with name: "marie", password: "llantasruedan",
  except: [:index, :search_by_tire, :search_by_car, :order_rate, :order_price]

  def index
  end

  def admin
    @vendors = Vendor.all
  end

  def error
    @vendor = Vendor.find(params[:id])
  end

  def new
    @vendor = Vendor.new
    @vendor = Vendor.find(params[:id])
  end

  def create
    @vendor = Vendor.new(vendor_params)
    if @vendor.save
      redirect_to vendor_path @vendor
    else
      render '_error'
    end
  end

  def update
    @vendor = Vendor.find(params[:id])

    if @vendor.update(vendor_params)
      redirect_to @vendor
    else
      render 'edit'
    end
  end

  def edit
    @vendor = Vendor.find(params[:id])
  end

  def destroy
    @vendor= Vendor.find(params[:id])
    @vendor.destroy

    redirect_to admin_vendors_path
  end

  def show
    @vendor = Vendor.find(params[:id])
    @vendor_tires = @vendor.tires.all
  end

  def search_by_tire
  end

  def search_by_car
  end

  def order_rate

  end

  def order_price

  end

  private

  def disable_layout
    render layout: false
  end

  def vendor_params
    params.require(:vendor).permit(:name, :address)
  end

end
