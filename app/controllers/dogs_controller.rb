class DogsController < ApplicationController
  before_action :load_dog, only: :show

  def index
    @dogs = Dog.all
  end

  def show
  end

  private

  def load_dog
    @dog = Dog.find(params[:id])
  end
end
