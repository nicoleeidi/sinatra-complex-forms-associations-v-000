class PetsController < ApplicationController

  get '/pets' do
    @pets = Pet.all
    erb :'/pets/index'
  end

  get '/pets/new' do
<<<<<<< HEAD
    erb :'/pets/new'
=======
        erb :'/pets/new'
>>>>>>> 9a62368d0b4d5c9429fff27ce77f0ac7df726779
  end

  post '/pets' do
    @pet = Pet.create(params[:pet])
<<<<<<< HEAD
    if !params["owner"]["name"].empty?
      @pet.owner = Owner.create(name: params["owner"]["name"])
    end
    @pet.save
    redirect "pets/#{@pet.id}"
=======
      if !params["owner"]["name"].empty?
        @pet.owner = Owner.create(name: params["owner"]["name"])
      end
      @pet.save
    redirect to "pets/#{@pet.id}"
>>>>>>> 9a62368d0b4d5c9429fff27ce77f0ac7df726779
  end

  get '/pets/:id' do
    @pet = Pet.find(params[:id])
    erb :'/pets/show'
  end
  get '/pets/:id/edit' do
    @pet= Pet.find(params[:id])
    erb :'/pets/edit'
  end

  post '/pets/:id' do
<<<<<<< HEAD
    @pet = Pet.find(params[:id])
    @pet.update(params["pet"])
    if !params["owner"]["name"].empty?
      @pet.owner = Owner.create(name: params["owner"]["name"])
    end
    @pet.save
    redirect "pets/#{@pet.id}"
  end

  get '/pets/:id/edit' do
    @pet = Pet.find(params[:id])
    erb :'/pets/edit'
=======
    binding.pry
    @pet = Pet.find(params[:id])
       @pet.update(params["pet"])
       if !params["owner"]["name"].empty?
         @pet.owner = Owner.create(name: params["owner"]["name"])
       end
       @pet.save
    redirect to "pets/#{@pet.id}"
>>>>>>> 9a62368d0b4d5c9429fff27ce77f0ac7df726779
  end
end
