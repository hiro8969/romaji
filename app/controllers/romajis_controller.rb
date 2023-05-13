class RomajisController < ApplicationController
  require 'romaji' # romajiライブラリを読み込む

  def index
    @hiragana = params[:hiragana] || ''
    @romaji = Romaji.kana2romaji(@hiragana) # ひらがなをローマ字に変換する
  end

  def convert
    @hiragana = params[:hiragana] || ''
    @romaji = Romaji.kana2romaji(@hiragana)
    render :index
  end
end