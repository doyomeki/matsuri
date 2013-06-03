# -*- coding: utf-8 -*-
require 'spec_helper'

describe User do

  before(:each) do
    @attr = {
      :name => "Example User",
      :password => "changeme",
      :password_confirmation => "changeme"
    }
  end

  it "should create a new instance given a valid attribute" do
    User.create!(@attr)
  end

  describe "name validations" do

    before(:each) do
      @user = User.new(@attr)
    end

    it "should be unique values" do
      @user.save!
      @another_user = User.new(@attr)
      @another_user.save
      expect("そのニックネームは既に使われています。").to eq @another_user.errors.messages[:name][0]
    end

    it "should not be empty" do
      @user.name = ""
      @user.save
      expect("ニックネームを入力してください。").to eq @user.errors.messages[:name][0]
    end

    it "should have a password confirmation attribute" do
      @user.should respond_to(:password_confirmation)
    end
  end

  describe "passwords" do

    before(:each) do
      @user = User.new(@attr)
    end

    it "should have a password attribute" do
      @user.should respond_to(:password)
    end

    it "should have a password confirmation attribute" do
      @user.should respond_to(:password_confirmation)
    end
  end

  describe "password validations" do

    it "should require a password" do
      User.new(@attr.merge(:password => "", :password_confirmation => "")).
        should_not be_valid
    end

  end

  describe "password encryption" do

    before(:each) do
      @user = User.create!(@attr)
    end

    it "should have an encrypted password attribute" do
      @user.should respond_to(:encrypted_password)
    end

    it "should set the encrypted password attribute" do
      @user.encrypted_password.should_not be_blank
    end

  end

end
