class Api::V1::PeopleController < ApplicationController
  before_action :set_people, only: [:index]
  before_action :set_person, only: [:show, :update, :destroy]

  # GET /api/v1/people
  def index
    render json: @people.as_json(except: [:created_at, :updated_at])
  end

  # GET /api/v1/people/1
  def show
    render json: @person.as_json(except: [:created_at, :updated_at])
  end

  # POST /api/v1/people
  def create
    @person = Person.new(person_params)

    if @person.save
      render json: @person, status: :created
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/people/1
  def update
    if @person.update(person_params)
      render json: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/contacts/1

  def destroy
    @person.destroy
  end

  private
    def set_person
      @person = Person.find(params[:id])
    end

    def set_people
      @people = Person.order('created_at DESC')
    end

    def person_params
 		   params.permit(:name, :email, :nickname, :phone)
    end
end
