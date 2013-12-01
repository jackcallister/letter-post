class LettersController < ApplicationController
  # before_filter :set_letter, only: :payment

  def new
    @letter = Letter.new
  end

  def create
    @letter = Letter.new(letter_params)

    if @letter.save
      redirect_to letter_payment_path(@letter)
    else
      render action: 'new'
    end
  end

  def update
  end

  def show
  end

  def payment
    @letter = Letter.find(params[:letter_id])
  end

  private

  def letter_params
    params[:letter].permit!
  end
end
