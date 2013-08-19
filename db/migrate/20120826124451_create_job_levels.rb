class CreateJobLevels < ActiveRecord::Migration
  def up
    create_table :job_levels do |t|
    	t.string :name

      t.timestamps
    end

    JobLevel.reset_column_information
    %w{assistant executive manager director}.each do |type|
      JobLevel.create(:name => type)
    end

  end

  def down
  	drop_table :job_levels 
  end

end
