# frozen_string_literal: true

require "rails_helper"

RSpec.describe AudioProcessing::AudioConverter do
  let(:test_file_path) { "spec/fixtures/tone.mp3" }
  let(:output_directory) { "tmp/converted_audio_files" }
  let(:converter) { AudioProcessing::AudioConverter.new(file: test_file_path, output_directory:) }

  before do
    FileUtils.mkdir_p(output_directory) unless Dir.exist?(output_directory)
  end

  after do
    FileUtils.rm_rf(output_directory) if Dir.exist?(output_directory)
  end

  describe "#convert" do
    it "converts the file to the specified format" do
      output = converter.convert
      expect(File.extname(output)).to eq(".mp3")
      basename = File.basename(test_file_path, ".*")
      expect(output).to include(basename)
      expect(output).to match(/\d{14}/)
      expect(File.dirname(output)).to eq(output_directory)
      expect(output.start_with?(output_directory)).to be_truthy
    end
  end
end