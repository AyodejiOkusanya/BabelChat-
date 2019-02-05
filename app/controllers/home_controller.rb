require "google/cloud/translate"


class HomeController < ApplicationController
  def index
  end

  def translate
    # project_id = ENV["CLOUD_PROJECT_ID"]
    project_id = "video-browser-230220"
    translate = Google::Cloud::Translate.new project: project_id
    text = "Hello, world!"
    target = "ru"
    translation = translate.translate text, to: target
    render 'home/translate'
    @text = text
    @translation = translation


  end
end
