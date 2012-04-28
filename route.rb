#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'sinatra'
require 'haml'

get '/' do
  @attributes = [
    {:title => '値を1増やす', :key => :inc, :default => '+'},
    {:title => '値を1減らす', :key => :dec, :default => '-'},
    {:title => 'ポインタを次に移動', :key => :nxt, :default => '>'},
    {:title => 'ポインタを前に移動', :key => :prv, :default => '<'},
    {:title => '開きフレーズ', :key => :opn, :default => '[', :hint => '値が0なら対応する閉じフレーズまで飛ばす'},
    {:title => '閉じフレーズ', :key => :cls, :default => ']'},
    {:title => '値を出力する', :key => :put, :default => '.'},
    {:title => '入力する', :key => :get, :default => ','}
  ]
  haml :index
end
