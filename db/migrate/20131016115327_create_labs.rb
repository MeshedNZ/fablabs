class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.string     :name
      t.string     :slug, index: true
      t.text       :description

      t.string     :ancestry, index: true
      t.references :creator, index: true
      t.string     :workflow_state

      t.integer    :capabilities
      t.string     :time_zone

      t.string     :avatar_src
      t.string     :header_image_src

      t.string     :phone
      t.string     :email

      t.string     :address_1
      t.string     :address_2
      t.string     :city
      t.string     :county
      t.string     :postal_code
      t.string     :country_code
      t.string     :subregion
      t.string     :region
      t.float      :latitude
      t.float      :longitude
      t.integer    :zoom
      t.text       :address_notes
      t.text       :reverse_geocoded_address

      t.integer    :kind
      # launched on date, various granularity YEAR, YEAR + MONTH, YEAR + MONTH + DAY

      t.text       :application_notes

      t.text       :tools_list
      t.timestamps
    end
  end
end
