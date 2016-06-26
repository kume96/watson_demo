class TopController < ApplicationController
  require 'json'
  def index
    #object_recognition
    object_recognition_json_file_path = 'public/object_recognitions.json'
    @object_recognition_json_data = File.open(object_recognition_json_file_path) do |io|
      JSON.load(io)
    end

    @object_recognition_json_data = @object_recognition_json_data.sort_by{|val| val['start_time']}
    @object_recognition_label_count = []

    @object_recognition_json_data.each do |c|
      @object_recognition_label_count<<c["start_time"]
    end
    @object_recognition_data_sets = @object_recognition_json_data.map { |c|
      c["data"]
    }
    @object_recognition_labels = @object_recognition_data_sets.map(&:keys).flatten.uniq
    @object_recognition_data_sets.each do |c|
      @object_recognition_labels.each do | label |
        c[label] = 0 unless c[label]
      end
    end
    @object_recognition_datasets = []
    @object_recognition_labels.each do |label|
      @a = label
      tmp = {
        label: label,
        data: []
      }
      @object_recognition_data_sets.each do |c|
        tmp[:data]<<c[label]
      end
      @object_recognition_datasets << tmp
    end

    #voice_category
    voice_category_json_file_path = 'public/voice_category.json'
    @voice_category_json_data = File.open(voice_category_json_file_path) do |io|
      JSON.load(io)
    end

    @voice_category_json_data = @voice_category_json_data.sort_by{|val| val['start_time']}
    @voice_category_label_count = []


    @voice_category_json_data.each do |c|
      @voice_category_label_count<<c["start_time"]
    end

    @voice_category_label_2 = []
    @voice_category_json_data.each_with_index do |c, i|
      label_tmp = c["start_time"].to_s + "〜"
      label_tmp += @voice_category_json_data[i+1]["start_time"].to_s unless i + 1 == @voice_category_json_data.count
      @voice_category_label_2<<label_tmp
    end


    @voice_category_data_sets = @voice_category_json_data.map { |c|
      c["data"]
    }
    @voice_category_labels = @voice_category_data_sets.map(&:keys).flatten.uniq
    @voice_category_data_sets.each do |c|
      @voice_category_labels.each do | label |
        c[label] = 0 unless c[label]
      end
    end
    @voice_category_datasets = []
    @voice_category_labels.each do |label|
      @a = label
      tmp = {
        label: label,
        data: []
      }
      @voice_category_data_sets.each do |c|
        tmp[:data]<<c[label]
      end
      @voice_category_datasets << tmp
    end

    #voice_keyword
    voice_keyword_json_file_path = 'public/voice_keyword.json'
    @voice_keyword_json_data = File.open(voice_keyword_json_file_path) do |io|
      JSON.load(io)
    end

    @voice_keyword_json_data = @voice_keyword_json_data.sort_by{|val| val['start_time']}
  end
end
