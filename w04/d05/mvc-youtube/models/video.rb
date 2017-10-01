class Video
	attr_accessor :id, :title, :description, :url
	
	def self.open_connection
		PG.connect(dbname: "video_blog")
	end

	def self.hydrate video_data
    video = Video.new
    video.id = video_data['id']
    video.title = video_data['title']
    video.description = video_data['description']
    video.url = video_data['url']
    video
	end

	def self.all
		conn = self.open_connection
		sql = "SELECT * FROM video ORDER BY id;"
		results = conn.exec(sql)
		results.map { |result| self.hydrate(result)  }
	end

	def self.find id
		conn = self.open_connection
		sql = "SELECT * FROM video WHERE id = #{id} LIMIT 1;"
		result = conn.exec(sql)
		self.hydrate(result[0])
	end

	def save
		conn = Video.open_connection
		if(!self.id) 
      sql = "INSERT INTO video (title , description, url) VALUES ( '#{self.title}', '#{self.description}', '#{self.url}');"
    else 
      sql = "UPDATE video SET title='#{self.title}', description='#{self.description}', url='#{self.url}' WHERE id = #{self.id};"
    end
    conn.exec(sql)
	end

	def self.destroy id
        conn = self.open_connection
        sql = "DELETE FROM video WHERE id = #{id};"
        conn.exec(sql)
    end
end