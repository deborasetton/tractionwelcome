require 'open-uri'
require 'open3'

class QrCodesController < ApplicationController
  def new
  end
  def decode
    debugger
    qr_code_url = params[:qr_code_url]

    file_contents = open(qr_code_url).read
    filename = "tmp/#{SecureRandom.uuid}.png"

    File.open(filename, 'wb') do |f|
      f.write(file_contents)
    end

    stdin, stdout, stderr, wait_thr = Open3.popen3("#{Rails.root}/bin/decode_qrcode.py", "#{Rails.root}/#{filename}")
    url = stdout.read

    FileUtils.rm(filename)

    redirect_to "/#{url}"
  end
end
