class TodosController < ApplicationController
	before_action :initialize_parse_api

	respond_to :json

	def index
		todo_query = Parse::Query.new('Todo')
		respond_with todo_query.get
	end

	def show
		todo_query = Parse::Query.new("Todo")
		todo_query.eq("objectId", params[:object_id])
		todo = todo_query.get
	end

	def create
		todo              = Parse::Object.new("Todo")
		todo['task']      = params[:task]
		todo['completed'] = params[:completed]
		
		respond_with todo.save
	end

	def update
		todo_query    	  = Parse::Query.new("Todo").eq("objectId", params[:parse_object_id]).get.first
		todo['task']      = params[:task]
		todo['completed'] = params[:completed]
		todo.save
	end

	def destroy
		binding.pry
		todo_query = Parse::Query.new("Todo").eq("objectId", params[:parse_object_id]).get.first
		todo_query.parse_delete
	end

	private

	def initialize_parse_api
		Parse.init application_id: ENV["PARSE-APPLICATION-ID"], api_key: ENV["PARSE-API-KEY"]
	end
end
