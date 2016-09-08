# Robin Hamill Portfolio site
A personal portfolio site

	* Migrated from WordPress
	* Built on Rails

## To be worked on:
	* Fix nav: Smooth-scroll is not working. Might need different nav for Front-end/back-end to respect href="#anchor"
	
	* Create model for language taxonomy
		* Model name: languages
		* Column name: lang:string
		* Language belongs_to :project
		* Project has_many :languages
		Associated by project:id
		* Dependency => Destroy
		* Should allow any number of languages to be added, but start with 5 or 6
		* Loop over in view
	* Add CV

	* 