class BackpacksController < ApplicationController
  before_action :set_backpack, only: [:show, :add_item, :remove_item]
  before_action :set_item, only: [:add_item, :remove_item]

  def index
    @backpacks = Backpack.all
  end

  def show
    @items = Item.all
  end

  def add_item
    @backpack.items << @item

    respond_to do |format|
      format.html { redirect_to backpack_path }
    end
  end

  def remove_item
    @backpack.items.delete(@item)

    respond_to do |format|
      format.html { redirect_to backpack_path }
    end
  end

  private

  def set_backpack
    @backpack = Backpack.find(params[:id])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end
end
